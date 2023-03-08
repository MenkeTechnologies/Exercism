import java.util.concurrent.Executors
import scala.concurrent.duration.Duration
import scala.concurrent.{Await, ExecutionContext, Future}

object Frequency {
  private def freq(text: String)(implicit ec: ExecutionContext): Future[Map[Char, Int]] = {
    Future {
      text.toCharArray
        .filter(_.isLetter)
        .map(_.toLower)
        .foldLeft(Map[Char, Int]()) { (acc, c) => acc.updated(c, acc.getOrElse(c, 0) + 1) }
    }
  }

  def frequency(numWorkers: Int, texts: Seq[String]): Map[Char, Int] = {
    val executorService = Executors.newFixedThreadPool(numWorkers)
    implicit val executionContext = ExecutionContext.fromExecutorService(executorService)
    val tasks = Future.sequence(texts.map(freq)).map(_.foldLeft(Map.empty[Char, Int]) {
      (acc, map) =>
        (acc.keySet ++ map.keySet).map { key =>
          key -> (acc.getOrElse(key, 0) + map.getOrElse(key, 0))
        }.toMap
    })
    Await.result(tasks, Duration.Inf)
  }
}

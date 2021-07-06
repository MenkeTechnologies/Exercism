class SpaceAge(val secs: Int) {

    val spy = 31557600.0


    private fun calc(ratio: Double): Double {
        val years = secs / spy / ratio
        return String.format("%.2f", years).toDouble()

    }

    fun onEarth(): Double {
        return calc(1.0)
    }


    fun onMercury(): Double {
        return calc(0.2408467)
    }

    fun onVenus(): Double {

        return calc(0.61519726)
    }

    fun onMars(): Double {

        return calc(1.8808158)
    }

    fun onJupiter(): Double {

        return calc(11.862615)
    }

    fun onSaturn(): Double {
        return calc(29.447498)
    }

    fun onUranus(): Double {

        return calc(84.016846)
    }

    fun onNeptune(): Double {
        return calc(164.79132)
    }
}

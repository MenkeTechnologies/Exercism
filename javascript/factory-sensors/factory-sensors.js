export class ArgumentError extends Error {}

export class OverheatingError extends Error {
    constructor(temperature) {
        super(`The temperature is ${temperature} ! Overheating !`);
        this.temperature = temperature;
    }
}

export const checkHumidityLevel = humidityPercentage => {
    if (humidityPercentage > 70) throw new Error();
}
export const reportOverheating = temperature => {
    if (!temperature) throw new ArgumentError();
    else if (temperature > 500)
        throw new OverheatingError(temperature);
}
export const monitorTheMachine = actions => {
    try {
        actions.check();
    } catch (e) {
        if (e instanceof ArgumentError) actions.alertDeadSensor();
        else if (e instanceof OverheatingError) {
            if (e.temperature < 600) actions.alertOverheating();
            else if (e.temperature > 600) actions.shutdown();
        } else throw e
    }
}
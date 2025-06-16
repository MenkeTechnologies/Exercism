export const createAppointment = (days, now = Date.now()) => new Date(now + 86_400_000 * days);

export const getAppointmentTimestamp = (appointmentDate) => appointmentDate.toISOString();

export const getAppointmentDetails = (timestamp) => {
    const date = new Date(timestamp);
    return {
        year: date.getFullYear(), month: date.getMonth(), date: date.getDate(),
        hour: date.getHours(), minute: date.getMinutes()
    };
}
export const updateAppointment = (timestamp, options) => {
    const date = new Date(timestamp);
    if (options.year != null) {
        date.setFullYear(options.year)
    }
    if (options.month != null) {
        date.setMonth(options.month)
    }
    if (options.date != null) {
        date.setDate(options.date)
    }
    if (options.hour != null) {
        date.setHours(options.hour)
    }
    if (options.minute != null) {
        date.setMinutes(options.minute)
    }
    return {
        year: date.getFullYear(), month: date.getMonth(), date: date.getDate(),
        hour: date.getHours(), minute: date.getMinutes()
    };
}

export const timeBetween = (timestampA, timestampB) =>
    Math.round((new Date(timestampB).getTime() - new Date(timestampA).getTime()) / 1_000);

export const isValid = (appointmentTimestamp, currentTimestamp) => new Date(appointmentTimestamp) > new Date(currentTimestamp);

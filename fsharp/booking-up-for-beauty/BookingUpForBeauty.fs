module BookingUpForBeauty

open System

let schedule (appointmentDateDescription: string): DateTime = Convert.ToDateTime(appointmentDateDescription)

let hasPassed (appointmentDate: DateTime): bool = appointmentDate < DateTime.Now

let isAfternoonAppointment (appointmentDate: DateTime): bool =
    appointmentDate.Hour >= 12 && appointmentDate.Hour < 18

let description (appointmentDate: DateTime): string = appointmentDate.ToString "M/d/yyyy h:mm:ss tt" |> sprintf "You have an appointment on %s."


let anniversaryDate(): DateTime = DateTime(DateTime.Now.Year, 9, 15)

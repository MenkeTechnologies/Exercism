import json


class RestAPI:
    def __init__(self, database=None):
        self.database = database

    def get(self, url, payload=None):
        if payload:
            payload = json.loads(payload)
            users = self.users_data(payload["users"])
            return json.dumps({"users": users})

        return json.dumps(self.database)

    def _post_user(self, payload):
        payload = json.loads(payload)
        user_name = payload["user"]

        self.database["users"].append({
            "name": user_name,
            "owes": {},
            "owed_by": {},
            "balance": 0.0
        })

        return json.dumps(self.user_data(user_name))

    def _post_iou(self, payload):
        payload = json.loads(payload)
        lender, borrower, amount = payload.values()
        self.transaction(lender, borrower, amount)
        self.update_balances()

        users = self.users_data(sorted([borrower, lender]))
        return json.dumps({"users": users})

    def post(self, url, payload=None):
        if url == "/add" and payload:
            return self._post_user(payload)

        if url == "/iou" and payload:
            return self._post_iou(payload)

    def user_data(self, user_name):
        return next((user for user in self.database["users"] if user["name"] == user_name), None)

    def users_data(self, users_names):
        users = []
        for user_name in users_names:
            users.append(self.user_data(user_name))
        print(users)
        return users

    def update_balances(self):
        for user in self.database["users"]:
            owes = sum(user["owes"].values())
            owed_by = sum(user["owed_by"].values())
            user["balance"] = owed_by - owes
            user["owes"] = {k: v for k, v in user["owes"].items() if v != 0}
            user["owed_by"] = {k: v for k, v in user["owed_by"].items() if v != 0}

    def transaction(self, lender, borrower, amount):
        lender_data = self.user_data(lender)
        borrower_data = self.user_data(borrower)
        if borrower in lender_data["owes"]:
            debt = lender_data["owes"][borrower]

            # return some of the debt
            if debt - amount > 0:
                lender_data["owes"][borrower] = debt - amount
                borrower_data["owed_by"][lender] = debt - amount
                return

            # lender superavit
            lender_data["owes"][borrower] = 0
            borrower_data["owed_by"][lender] = 0
            amount -= debt
        debt = lender_data['owed_by'].setdefault(borrower, 0)
        lender_data['owed_by'][borrower] = debt + amount

        debt = borrower_data['owes'].setdefault(lender, 0)
        borrower_data['owes'][lender] = debt + amount

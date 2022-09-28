class CustomSet(object):
    def __init__(self, elements=[]):
        self.elements = []
        for element in elements:
            self.add(element)

    def isempty(self):
        return len(self.elements) == 0

    def __contains__(self, element):
        return element in self.elements

    def issubset(self, other):
        for element in self.elements:
            if element not in other.elements:
                return False
        return True

    def isdisjoint(self, other):
        for element in self.elements:
            if element in other.elements:
                return False
        return True

    def __eq__(self, other):
        if len(self.elements) != len(other.elements):
            return False
        else:
            for element in self.elements:
                if element not in other.elements:
                    return False
            return True

    def add(self, element):
        if element not in self.elements:
            self.elements.append(element)

    def intersection(self, other):
        result_elements = []
        for element in self.elements:
            if element in other.elements:
                result_elements.append(element)
        return CustomSet(result_elements)

    def __sub__(self, other):
        result_elements = []
        for element in self.elements:
            if element not in other.elements:
                result_elements.append(element)
        return CustomSet(result_elements)

    def __add__(self, other):
        result = CustomSet(self.elements)
        for element in other.elements:
            result.add(element)
        return result


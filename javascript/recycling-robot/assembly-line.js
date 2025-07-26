import { ElectronicDevice } from './lib.js';

export const isBoolean = value => typeof value === 'boolean';

export const isNumber = value => typeof value === 'bigint' || (typeof value === 'number' && isFinite(value));

export const isObject = value => Boolean(value && typeof value === 'object');

export const isNumericString = value => typeof value === 'string' && /^-?[\d]+$/.test(value);

export const isElectronic = object => object instanceof ElectronicDevice;

export const isNonEmptyArray = value => Array.isArray(value) && value.length > 0;

export const isEmptyArray = value => Array.isArray(value) && value.length === 0;

export const assertHasId = object => {
  if ('id' in object) {
    return
  }
  throw new Error()
};

export const hasType = object => 'type' in object;

export const hasIdProperty = object => Object.hasOwn(object, 'id');

export const hasDefinedType = object => Object.hasOwn(object, 'type') && object.type !== undefined;

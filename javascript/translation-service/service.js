export class TranslationService {
    constructor(api) {
        this.api = api;
    }

    free(text) {
        return this.api.fetch(text).then(t => t.translation);
    }

    batch(texts) {
        if (!texts.length) return Promise.reject(new BatchIsEmpty);
        return Promise.all(texts.map(this.free, this));
    }

    request(text, {api} = this, counter = 0) {
        return new Promise((solve, fail) => api.request(text, function cb(err) {
            if (err) ++counter < 3 ? api.request(text, cb) : fail(err); else solve(err);
        }));
    }

    premium(text, quality) {
        return this.api.fetch(text).catch(_ => this.request(text).then(() => this.api.fetch(text))).then(t => t.quality >= quality ? t.translation : Promise.reject(new QualityThresholdNotMet(text)));
    }
}

export class QualityThresholdNotMet extends Error {
    constructor(text) {
        super(`${text} translation below requested quality.`);
    }
}

export class BatchIsEmpty extends Error {
    constructor() {
        super('No texts found in the batch array.');
    }
}

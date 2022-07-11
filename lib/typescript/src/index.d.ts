declare type SeonType = {
    init(): Promise<boolean>;
    sessionId(sessionId: string): Promise<boolean>;
    logging(enabled: boolean): Promise<boolean>;
    fingerprint(): Promise<string>;
};
declare const _default: SeonType;
export default _default;

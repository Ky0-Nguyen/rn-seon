import { NativeModules } from "react-native";

type SeonType = {
  init(): Promise<boolean>;
  sessionId(sessionId: string): Promise<boolean>;
  logging(enabled: boolean): Promise<boolean>;
  fingerprint(): Promise<string>;
};

const { Seon } = NativeModules;

export default Seon as SeonType;

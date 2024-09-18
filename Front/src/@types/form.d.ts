export type Errors = {
  nickname?: string;
  localisation?: string;
  email?: string;
  password?: string;
};

export type FormReinitData = {
  newPassword: string;
  confirmPassword?: string;
  token: string;
};

export type FormResetData = {
  email: string;
};

export type Credential = {
  nickname: string;
  localisation: string;
  email: string;
  password: string;
};
export type PatchCredential = {
  nickname?: string;
  localisation?: string;
  email?: string;
  currentPassword?: string;
  confirmPassword?: string;
};

export type FormAccountData = {
  nickname: string;
  localisation: string;
  email: string;
  currentPassword: string;
  newPassword: string;
  confirmPassword: string;
};

export type FormData = {
  nickname: string;
  localisation: string;
  email: string;
  currentPassword: string;
  newPassword: string;
  confirmPassword: string;
  test: string;
};

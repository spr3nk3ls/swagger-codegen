package swagger

import (
    "encoding/base64"
)

type Configuration struct {
    UserName  string  `json:"userName,omitempty"`
    Password  string  `json:"password,omitempty"`
    ApiKey  string  `json:"apiKey,omitempty"`
    Debug  bool  `json:"debug,omitempty"`
    DebugFile  string  `json:"debugFile,omitempty"`
    OAuthToken  string  `json:"oAuthToken,omitempty"`
    Timeout  int  `json:"timeout,omitempty"`
    BasePath  string  `json:"basePath,omitempty"`
    Host  string  `json:"host,omitempty"`
    Scheme  string  `json:"scheme,omitempty"`
    AccessToken string `json:"accessToken,omitempty"`
}

func NewConfiguration() *Configuration {
    return &Configuration{
        BasePath: "http://petstore.swagger.io/v2",
        UserName: "",
        Debug: false,
        }
}

func (c *Configuration) GetBasicAuthEncodedString() string {
    return base64.StdEncoding.EncodeToString([]byte(c.UserName  + ":" + c.Password))
}
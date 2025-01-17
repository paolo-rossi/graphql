{******************************************************************************}
{                                                                              }
{  Delphi GraphQL                                                              }
{  Copyright (c) 2022 Luca Minuti                                              }
{  https://github.com/lminuti/graphql                                          }
{                                                                              }
{******************************************************************************}
{                                                                              }
{  Licensed under the Apache License, Version 2.0 (the "License");             }
{  you may not use this file except in compliance with the License.            }
{  You may obtain a copy of the License at                                     }
{                                                                              }
{      http://www.apache.org/licenses/LICENSE-2.0                              }
{                                                                              }
{  Unless required by applicable law or agreed to in writing, software         }
{  distributed under the License is distributed on an "AS IS" BASIS,           }
{  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.    }
{  See the License for the specific language governing permissions and         }
{  limitations under the License.                                              }
{                                                                              }
{******************************************************************************}
unit GraphQL.Core;

interface

uses
  System.Classes, System.SysUtils, System.Rtti;

type
  EGraphQLError = class(Exception)
  end;

  EGraphQLArgumentNotFound = class(EGraphQLError)
  end;

  EGraphQLFieldNotFound = class(EGraphQLError)
  end;

  // abstact
  IGraphQLValue = interface
    ['{0471DB6A-6810-4C29-8276-BCB2951DDCF2}']
  end;

  IGraphQLArgument = interface
    ['{9740320C-AC4E-47F4-BAA1-8C9EB7D7BEAB}']
    function GetName: string;
    function GetValue: TValue;

    property Name: string read GetName;
    property Value: TValue read GetValue;
  end;

  IGraphQLArguments = interface
  ['{9415D410-2BAB-4F06-B8E4-36788036FCBB}']
    function Count: Integer;
    function GetArgument(AIndex: Integer): IGraphQLArgument;
    procedure Add(AArgument: IGraphQLArgument);

    property Arguments[AIndex: Integer]: IGraphQLArgument read GetArgument; default;
  end;

  IGraphQLField = interface
    ['{9C7313F8-7953-4F9E-876B-69B2CDE60865}']
    function GetFieldName: string;
    function GetFieldAlias: string;
    function GetValue: IGraphQLValue;
    function GetArgument(AIndex: Integer): IGraphQLArgument;
    function ArgumentCount: Integer;
    function ArgumentByName(const AName: string): IGraphQLArgument;

    property FieldName: string read GetFieldName;
    property FieldAlias: string read GetFieldAlias;
    property Value: IGraphQLValue read GetValue;
    property Arguments[AIndex: Integer]: IGraphQLArgument read GetArgument;
  end;

  IGraphQLNull = interface(IGraphQLValue)
    ['{04FF0371-2034-49E3-9977-810A2DD54E44}']
  end;

  IGraphQLObject = interface(IGraphQLValue)
    ['{80B1FD62-50BA-4000-8C3C-79FF8F52159E}']
    function FieldCount: Integer;
    function GetField(AIndex: Integer): IGraphQLField;
    function GetFieldByName(const AName: string): IGraphQLField;
    function FindFieldByName(const AName: string): IGraphQLField;

    property Fields[AIndex: Integer]: IGraphQLField read GetField;
    property FieldByName[const AName: string]: IGraphQLField read GetFieldByName;
  end;

  IGraphQL = interface
    ['{68BCD39F-A645-4007-8FA3-632359041A68}']
    function GetName: string;
    procedure SetName(const AName: string);
    procedure AddField(AField: IGraphQLField);
    function FieldCount: Integer;
    function GetField(AIndex: Integer): IGraphQLField;

    property Fields[AIndex: Integer]: IGraphQLField read GetField;
    property Name: string read GetName write SetName;
  end;

implementation

end.

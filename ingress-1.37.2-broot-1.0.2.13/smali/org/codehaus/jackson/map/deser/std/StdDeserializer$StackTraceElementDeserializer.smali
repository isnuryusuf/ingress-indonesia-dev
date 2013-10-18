.class public Lorg/codehaus/jackson/map/deser/std/StdDeserializer$StackTraceElementDeserializer;
.super Lorg/codehaus/jackson/map/deser/std/StdScalarDeserializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/deser/std/StdScalarDeserializer",
        "<",
        "Ljava/lang/StackTraceElement;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1076
    const-class v0, Ljava/lang/StackTraceElement;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/deser/std/StdScalarDeserializer;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1073
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/std/StdDeserializer$StackTraceElementDeserializer;->deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/StackTraceElement;

    move-result-object v0

    return-object v0
.end method

.method public deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/StackTraceElement;
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 1082
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 1084
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_7

    .line 1085
    const-string/jumbo v3, ""

    const-string/jumbo v2, ""

    const-string/jumbo v1, ""

    .line 1086
    const/4 v0, -0x1

    .line 1088
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextValue()Lorg/codehaus/jackson/JsonToken;

    move-result-object v4

    sget-object v5, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-eq v4, v5, :cond_6

    .line 1089
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v5

    .line 1090
    const-string/jumbo v6, "className"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1091
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1092
    :cond_1
    const-string/jumbo v6, "fileName"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1093
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1094
    :cond_2
    const-string/jumbo v6, "lineNumber"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1095
    invoke-virtual {v4}, Lorg/codehaus/jackson/JsonToken;->isNumeric()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1096
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getIntValue()I

    move-result v0

    goto :goto_0

    .line 1098
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Non-numeric token ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ") for property \'lineNumber\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/codehaus/jackson/map/JsonMappingException;->from(Lorg/codehaus/jackson/JsonParser;Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    throw v0

    .line 1100
    :cond_4
    const-string/jumbo v4, "methodName"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1101
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1102
    :cond_5
    const-string/jumbo v4, "nativeMethod"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1105
    iget-object v4, p0, Lorg/codehaus/jackson/map/deser/std/StdDeserializer$StackTraceElementDeserializer;->_valueClass:Ljava/lang/Class;

    invoke-virtual {p0, p1, p2, v4, v5}, Lorg/codehaus/jackson/map/deser/std/StdDeserializer$StackTraceElementDeserializer;->handleUnknownProperty(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1108
    :cond_6
    new-instance v4, Ljava/lang/StackTraceElement;

    invoke-direct {v4, v3, v2, v1, v0}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v4

    .line 1110
    :cond_7
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/std/StdDeserializer$StackTraceElementDeserializer;->_valueClass:Ljava/lang/Class;

    invoke-virtual {p2, v1, v0}, Lorg/codehaus/jackson/map/DeserializationContext;->mappingException(Ljava/lang/Class;Lorg/codehaus/jackson/JsonToken;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    throw v0
.end method

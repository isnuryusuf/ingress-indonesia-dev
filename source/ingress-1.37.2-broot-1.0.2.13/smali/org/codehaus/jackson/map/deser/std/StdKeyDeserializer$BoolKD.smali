.class final Lorg/codehaus/jackson/map/deser/std/StdKeyDeserializer$BoolKD;
.super Lorg/codehaus/jackson/map/deser/std/StdKeyDeserializer;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 76
    const-class v0, Ljava/lang/Boolean;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/deser/std/StdKeyDeserializer;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final _parse(Ljava/lang/String;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Boolean;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 81
    const-string/jumbo v0, "true"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 85
    :goto_0
    return-object v0

    .line 84
    :cond_0
    const-string/jumbo v0, "false"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 87
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/std/StdKeyDeserializer$BoolKD;->_keyClass:Ljava/lang/Class;

    const-string/jumbo v1, "value not \'true\' or \'false\'"

    invoke-virtual {p2, v0, p1, v1}, Lorg/codehaus/jackson/map/DeserializationContext;->weirdKeyException(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    throw v0
.end method

.method public final bridge synthetic _parse(Ljava/lang/String;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 74
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/std/StdKeyDeserializer$BoolKD;->_parse(Ljava/lang/String;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

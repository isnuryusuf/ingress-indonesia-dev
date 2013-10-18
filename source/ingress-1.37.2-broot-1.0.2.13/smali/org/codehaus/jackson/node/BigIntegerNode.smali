.class public final Lorg/codehaus/jackson/node/BigIntegerNode;
.super Lorg/codehaus/jackson/node/NumericNode;
.source "SourceFile"


# instance fields
.field protected final _value:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 0
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Lorg/codehaus/jackson/node/NumericNode;-><init>()V

    iput-object p1, p0, Lorg/codehaus/jackson/node/BigIntegerNode;->_value:Ljava/math/BigInteger;

    return-void
.end method

.method public static valueOf(Ljava/math/BigInteger;)Lorg/codehaus/jackson/node/BigIntegerNode;
    .locals 1
    .parameter

    .prologue
    .line 26
    new-instance v0, Lorg/codehaus/jackson/node/BigIntegerNode;

    invoke-direct {v0, p0}, Lorg/codehaus/jackson/node/BigIntegerNode;-><init>(Ljava/math/BigInteger;)V

    return-object v0
.end method


# virtual methods
.method public final asText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lorg/codehaus/jackson/node/BigIntegerNode;->_value:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 92
    if-ne p1, p0, :cond_1

    .line 97
    :cond_0
    :goto_0
    return v0

    .line 93
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    .line 94
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 95
    goto :goto_0

    .line 97
    :cond_3
    check-cast p1, Lorg/codehaus/jackson/node/BigIntegerNode;

    iget-object v2, p1, Lorg/codehaus/jackson/node/BigIntegerNode;->_value:Ljava/math/BigInteger;

    iget-object v3, p0, Lorg/codehaus/jackson/node/BigIntegerNode;->_value:Ljava/math/BigInteger;

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lorg/codehaus/jackson/node/BigIntegerNode;->_value:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    return v0
.end method

.method public final serialize(Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lorg/codehaus/jackson/node/BigIntegerNode;->_value:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonGenerator;->writeNumber(Ljava/math/BigInteger;)V

    .line 87
    return-void
.end method

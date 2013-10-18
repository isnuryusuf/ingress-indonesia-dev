.class public final Lorg/codehaus/jackson/node/LongNode;
.super Lorg/codehaus/jackson/node/NumericNode;
.source "SourceFile"


# instance fields
.field final _value:J


# direct methods
.method public constructor <init>(J)V
    .locals 0
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, Lorg/codehaus/jackson/node/NumericNode;-><init>()V

    iput-wide p1, p0, Lorg/codehaus/jackson/node/LongNode;->_value:J

    return-void
.end method

.method public static valueOf(J)Lorg/codehaus/jackson/node/LongNode;
    .locals 1
    .parameter

    .prologue
    .line 27
    new-instance v0, Lorg/codehaus/jackson/node/LongNode;

    invoke-direct {v0, p0, p1}, Lorg/codehaus/jackson/node/LongNode;-><init>(J)V

    return-object v0
.end method


# virtual methods
.method public final asText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 69
    iget-wide v0, p0, Lorg/codehaus/jackson/node/LongNode;->_value:J

    invoke-static {v0, v1}, Lorg/codehaus/jackson/io/NumberOutput;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 87
    if-ne p1, p0, :cond_1

    .line 92
    :cond_0
    :goto_0
    return v0

    .line 88
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    .line 89
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 90
    goto :goto_0

    .line 92
    :cond_3
    check-cast p1, Lorg/codehaus/jackson/node/LongNode;

    iget-wide v2, p1, Lorg/codehaus/jackson/node/LongNode;->_value:J

    iget-wide v4, p0, Lorg/codehaus/jackson/node/LongNode;->_value:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    .line 97
    iget-wide v0, p0, Lorg/codehaus/jackson/node/LongNode;->_value:J

    long-to-int v0, v0

    iget-wide v1, p0, Lorg/codehaus/jackson/node/LongNode;->_value:J

    const/16 v3, 0x20

    shr-long/2addr v1, v3

    long-to-int v1, v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final serialize(Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 81
    iget-wide v0, p0, Lorg/codehaus/jackson/node/LongNode;->_value:J

    invoke-virtual {p1, v0, v1}, Lorg/codehaus/jackson/JsonGenerator;->writeNumber(J)V

    .line 82
    return-void
.end method

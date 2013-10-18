.class public abstract Lorg/codehaus/jackson/JsonGenerator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field protected _cfgPrettyPrinter:Lorg/codehaus/jackson/PrettyPrinter;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract close()V
.end method

.method public abstract flush()V
.end method

.method public setCharacterEscapes(Lorg/codehaus/jackson/io/CharacterEscapes;)Lorg/codehaus/jackson/JsonGenerator;
    .locals 0
    .parameter

    .prologue
    .line 431
    return-object p0
.end method

.method public setHighestNonEscapedChar(I)Lorg/codehaus/jackson/JsonGenerator;
    .locals 0
    .parameter

    .prologue
    .line 396
    return-object p0
.end method

.method public setPrettyPrinter(Lorg/codehaus/jackson/PrettyPrinter;)Lorg/codehaus/jackson/JsonGenerator;
    .locals 0
    .parameter

    .prologue
    .line 359
    iput-object p1, p0, Lorg/codehaus/jackson/JsonGenerator;->_cfgPrettyPrinter:Lorg/codehaus/jackson/PrettyPrinter;

    .line 360
    return-object p0
.end method

.method public abstract useDefaultPrettyPrinter()Lorg/codehaus/jackson/JsonGenerator;
.end method

.method public final writeArrayFieldStart(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 1053
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 1054
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonGenerator;->writeStartArray()V

    .line 1055
    return-void
.end method

.method public abstract writeBinary(Lorg/codehaus/jackson/Base64Variant;[BII)V
.end method

.method public writeBinary([B)V
    .locals 3
    .parameter

    .prologue
    .line 752
    invoke-static {}, Lorg/codehaus/jackson/Base64Variants;->getDefaultVariant()Lorg/codehaus/jackson/Base64Variant;

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {p0, v0, p1, v1, v2}, Lorg/codehaus/jackson/JsonGenerator;->writeBinary(Lorg/codehaus/jackson/Base64Variant;[BII)V

    .line 753
    return-void
.end method

.method public abstract writeBoolean(Z)V
.end method

.method public abstract writeEndArray()V
.end method

.method public abstract writeEndObject()V
.end method

.method public abstract writeFieldName(Ljava/lang/String;)V
.end method

.method public writeFieldName(Lorg/codehaus/jackson/SerializableString;)V
    .locals 1
    .parameter

    .prologue
    .line 535
    invoke-interface {p1}, Lorg/codehaus/jackson/SerializableString;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 536
    return-void
.end method

.method public writeFieldName(Lorg/codehaus/jackson/io/SerializedString;)V
    .locals 1
    .parameter

    .prologue
    .line 516
    invoke-virtual {p1}, Lorg/codehaus/jackson/io/SerializedString;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 517
    return-void
.end method

.method public abstract writeNull()V
.end method

.method public abstract writeNumber(D)V
.end method

.method public abstract writeNumber(F)V
.end method

.method public abstract writeNumber(I)V
.end method

.method public abstract writeNumber(J)V
.end method

.method public abstract writeNumber(Ljava/lang/String;)V
.end method

.method public abstract writeNumber(Ljava/math/BigDecimal;)V
.end method

.method public abstract writeNumber(Ljava/math/BigInteger;)V
.end method

.method public abstract writeObject(Ljava/lang/Object;)V
.end method

.method public final writeObjectField(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1089
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 1090
    invoke-virtual {p0, p2}, Lorg/codehaus/jackson/JsonGenerator;->writeObject(Ljava/lang/Object;)V

    .line 1091
    return-void
.end method

.method public final writeObjectFieldStart(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 1073
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 1074
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonGenerator;->writeStartObject()V

    .line 1075
    return-void
.end method

.method public abstract writeRaw(C)V
.end method

.method public abstract writeRaw(Ljava/lang/String;)V
.end method

.method public abstract writeRaw([CII)V
.end method

.method public abstract writeRawValue(Ljava/lang/String;)V
.end method

.method public abstract writeStartArray()V
.end method

.method public abstract writeStartObject()V
.end method

.method public abstract writeString(Ljava/lang/String;)V
.end method

.method public writeString(Lorg/codehaus/jackson/SerializableString;)V
    .locals 1
    .parameter

    .prologue
    .line 579
    invoke-interface {p1}, Lorg/codehaus/jackson/SerializableString;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 580
    return-void
.end method

.method public abstract writeString([CII)V
.end method

.method public writeStringField(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 912
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 913
    invoke-virtual {p0, p2}, Lorg/codehaus/jackson/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 914
    return-void
.end method

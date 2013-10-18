.class public final Lorg/codehaus/jackson/util/TokenBuffer$Parser;
.super Lorg/codehaus/jackson/impl/JsonParserMinimalBase;
.source "SourceFile"


# instance fields
.field protected transient _byteBuilder:Lorg/codehaus/jackson/util/ByteArrayBuilder;

.field protected _closed:Z

.field protected _codec:Lorg/codehaus/jackson/ObjectCodec;

.field protected _location:Lorg/codehaus/jackson/JsonLocation;

.field protected _parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

.field protected _segment:Lorg/codehaus/jackson/util/TokenBuffer$Segment;

.field protected _segmentPtr:I


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/util/TokenBuffer$Segment;Lorg/codehaus/jackson/ObjectCodec;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 796
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/impl/JsonParserMinimalBase;-><init>(I)V

    .line 786
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_location:Lorg/codehaus/jackson/JsonLocation;

    .line 797
    iput-object p1, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_segment:Lorg/codehaus/jackson/util/TokenBuffer$Segment;

    .line 798
    iput v1, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_segmentPtr:I

    .line 799
    iput-object p2, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_codec:Lorg/codehaus/jackson/ObjectCodec;

    .line 800
    invoke-static {v1, v1}, Lorg/codehaus/jackson/impl/JsonReadContext;->createRootContext(II)Lorg/codehaus/jackson/impl/JsonReadContext;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    .line 801
    return-void
.end method


# virtual methods
.method protected final _checkIsNumber()V
    .locals 2

    .prologue
    .line 1099
    iget-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonToken;->isNumeric()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1100
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Current token ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ") not numeric, can not use numeric value accessors"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_constructError(Ljava/lang/String;)Lorg/codehaus/jackson/JsonParseException;

    move-result-object v0

    throw v0

    .line 1102
    :cond_1
    return-void
.end method

.method protected final _currentObject()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1094
    iget-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_segment:Lorg/codehaus/jackson/util/TokenBuffer$Segment;

    iget v1, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_segmentPtr:I

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/util/TokenBuffer$Segment;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected final _handleEOF()V
    .locals 0

    .prologue
    .line 1106
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_throwInternal()V

    .line 1107
    return-void
.end method

.method public final close()V
    .locals 1

    .prologue
    .line 841
    iget-boolean v0, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_closed:Z

    if-nez v0, :cond_0

    .line 842
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_closed:Z

    .line 844
    :cond_0
    return-void
.end method

.method public final getBigIntegerValue()Ljava/math/BigInteger;
    .locals 3

    .prologue
    .line 971
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->getNumberValue()Ljava/lang/Number;

    move-result-object v0

    .line 972
    instance-of v1, v0, Ljava/math/BigInteger;

    if-eqz v1, :cond_0

    .line 973
    check-cast v0, Ljava/math/BigInteger;

    .line 980
    :goto_0
    return-object v0

    .line 975
    :cond_0
    sget-object v1, Lorg/codehaus/jackson/util/TokenBuffer$1;->$SwitchMap$org$codehaus$jackson$JsonParser$NumberType:[I

    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->getNumberType()Lorg/codehaus/jackson/JsonParser$NumberType;

    move-result-object v2

    invoke-virtual {v2}, Lorg/codehaus/jackson/JsonParser$NumberType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 980
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_0

    .line 977
    :pswitch_0
    check-cast v0, Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_0

    .line 975
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public final getBinaryValue(Lorg/codehaus/jackson/Base64Variant;)[B
    .locals 3
    .parameter

    .prologue
    .line 1064
    iget-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->VALUE_EMBEDDED_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    .line 1066
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_currentObject()Ljava/lang/Object;

    move-result-object v0

    .line 1067
    instance-of v1, v0, [B

    if-eqz v1, :cond_0

    .line 1068
    check-cast v0, [B

    .line 1084
    :goto_0
    return-object v0

    .line 1072
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v1, :cond_1

    .line 1073
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Current token ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ") not VALUE_STRING (or VALUE_EMBEDDED_OBJECT with byte[]), can not access as binary"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_constructError(Ljava/lang/String;)Lorg/codehaus/jackson/JsonParseException;

    move-result-object v0

    throw v0

    .line 1075
    :cond_1
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->getText()Ljava/lang/String;

    move-result-object v1

    .line 1076
    if-nez v1, :cond_2

    .line 1077
    const/4 v0, 0x0

    goto :goto_0

    .line 1079
    :cond_2
    iget-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_byteBuilder:Lorg/codehaus/jackson/util/ByteArrayBuilder;

    .line 1080
    if-nez v0, :cond_3

    .line 1081
    new-instance v0, Lorg/codehaus/jackson/util/ByteArrayBuilder;

    const/16 v2, 0x64

    invoke-direct {v0, v2}, Lorg/codehaus/jackson/util/ByteArrayBuilder;-><init>(I)V

    iput-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_byteBuilder:Lorg/codehaus/jackson/util/ByteArrayBuilder;

    .line 1083
    :cond_3
    invoke-virtual {p0, v1, v0, p1}, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_decodeBase64(Ljava/lang/String;Lorg/codehaus/jackson/util/ByteArrayBuilder;Lorg/codehaus/jackson/Base64Variant;)V

    .line 1084
    invoke-virtual {v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->toByteArray()[B

    move-result-object v0

    goto :goto_0
.end method

.method public final getCodec()Lorg/codehaus/jackson/ObjectCodec;
    .locals 1

    .prologue
    .line 808
    iget-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_codec:Lorg/codehaus/jackson/ObjectCodec;

    return-object v0
.end method

.method public final getCurrentLocation()Lorg/codehaus/jackson/JsonLocation;
    .locals 1

    .prologue
    .line 905
    iget-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_location:Lorg/codehaus/jackson/JsonLocation;

    if-nez v0, :cond_0

    sget-object v0, Lorg/codehaus/jackson/JsonLocation;->NA:Lorg/codehaus/jackson/JsonLocation;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_location:Lorg/codehaus/jackson/JsonLocation;

    goto :goto_0
.end method

.method public final getCurrentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 909
    iget-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonReadContext;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDecimalValue()Ljava/math/BigDecimal;
    .locals 3

    .prologue
    .line 986
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->getNumberValue()Ljava/lang/Number;

    move-result-object v0

    .line 987
    instance-of v1, v0, Ljava/math/BigDecimal;

    if-eqz v1, :cond_0

    .line 988
    check-cast v0, Ljava/math/BigDecimal;

    .line 998
    :goto_0
    return-object v0

    .line 990
    :cond_0
    sget-object v1, Lorg/codehaus/jackson/util/TokenBuffer$1;->$SwitchMap$org$codehaus$jackson$JsonParser$NumberType:[I

    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->getNumberType()Lorg/codehaus/jackson/JsonParser$NumberType;

    move-result-object v2

    invoke-virtual {v2}, Lorg/codehaus/jackson/JsonParser$NumberType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 998
    :pswitch_0
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_0

    .line 993
    :pswitch_1
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_0

    .line 995
    :pswitch_2
    new-instance v1, Ljava/math/BigDecimal;

    check-cast v0, Ljava/math/BigInteger;

    invoke-direct {v1, v0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    move-object v0, v1

    goto :goto_0

    .line 990
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final getDoubleValue()D
    .locals 2

    .prologue
    .line 1003
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->getNumberValue()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public final getEmbeddedObject()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1054
    iget-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->VALUE_EMBEDDED_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    .line 1055
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_currentObject()Ljava/lang/Object;

    move-result-object v0

    .line 1057
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getFloatValue()F
    .locals 1

    .prologue
    .line 1008
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->getNumberValue()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    return v0
.end method

.method public final getIntValue()I
    .locals 2

    .prologue
    .line 1015
    iget-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    .line 1016
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_currentObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 1018
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->getNumberValue()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public final getLongValue()J
    .locals 2

    .prologue
    .line 1023
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->getNumberValue()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getNumberType()Lorg/codehaus/jackson/JsonParser$NumberType;
    .locals 2

    .prologue
    .line 1029
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->getNumberValue()Ljava/lang/Number;

    move-result-object v0

    .line 1030
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    sget-object v0, Lorg/codehaus/jackson/JsonParser$NumberType;->INT:Lorg/codehaus/jackson/JsonParser$NumberType;

    .line 1036
    :goto_0
    return-object v0

    .line 1031
    :cond_0
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_1

    sget-object v0, Lorg/codehaus/jackson/JsonParser$NumberType;->LONG:Lorg/codehaus/jackson/JsonParser$NumberType;

    goto :goto_0

    .line 1032
    :cond_1
    instance-of v1, v0, Ljava/lang/Double;

    if-eqz v1, :cond_2

    sget-object v0, Lorg/codehaus/jackson/JsonParser$NumberType;->DOUBLE:Lorg/codehaus/jackson/JsonParser$NumberType;

    goto :goto_0

    .line 1033
    :cond_2
    instance-of v1, v0, Ljava/math/BigDecimal;

    if-eqz v1, :cond_3

    sget-object v0, Lorg/codehaus/jackson/JsonParser$NumberType;->BIG_DECIMAL:Lorg/codehaus/jackson/JsonParser$NumberType;

    goto :goto_0

    .line 1034
    :cond_3
    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_4

    sget-object v0, Lorg/codehaus/jackson/JsonParser$NumberType;->FLOAT:Lorg/codehaus/jackson/JsonParser$NumberType;

    goto :goto_0

    .line 1035
    :cond_4
    instance-of v0, v0, Ljava/math/BigInteger;

    if-eqz v0, :cond_5

    sget-object v0, Lorg/codehaus/jackson/JsonParser$NumberType;->BIG_INTEGER:Lorg/codehaus/jackson/JsonParser$NumberType;

    goto :goto_0

    .line 1036
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getNumberValue()Ljava/lang/Number;
    .locals 1

    .prologue
    .line 1041
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_checkIsNumber()V

    .line 1042
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_currentObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    return-object v0
.end method

.method public final getText()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 921
    iget-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    sget-object v2, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    sget-object v2, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v2, :cond_3

    .line 923
    :cond_0
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_currentObject()Ljava/lang/Object;

    move-result-object v0

    .line 924
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 925
    check-cast v0, Ljava/lang/String;

    .line 938
    :goto_0
    return-object v0

    .line 927
    :cond_1
    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 929
    :cond_3
    iget-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    if-nez v0, :cond_4

    move-object v0, v1

    .line 930
    goto :goto_0

    .line 932
    :cond_4
    sget-object v0, Lorg/codehaus/jackson/util/TokenBuffer$1;->$SwitchMap$org$codehaus$jackson$JsonToken:[I

    iget-object v2, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {v2}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 938
    iget-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonToken;->asString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 935
    :pswitch_0
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_currentObject()Ljava/lang/Object;

    move-result-object v0

    .line 936
    if-nez v0, :cond_5

    move-object v0, v1

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 932
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final getTextCharacters()[C
    .locals 1

    .prologue
    .line 943
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 944
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    goto :goto_0
.end method

.method public final getTextLength()I
    .locals 1

    .prologue
    .line 949
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 950
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0
.end method

.method public final getTextOffset()I
    .locals 1

    .prologue
    .line 954
    const/4 v0, 0x0

    return v0
.end method

.method public final getTokenLocation()Lorg/codehaus/jackson/JsonLocation;
    .locals 1

    .prologue
    .line 901
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->getCurrentLocation()Lorg/codehaus/jackson/JsonLocation;

    move-result-object v0

    return-object v0
.end method

.method public final hasTextCharacters()Z
    .locals 1

    .prologue
    .line 959
    const/4 v0, 0x0

    return v0
.end method

.method public final nextToken()Lorg/codehaus/jackson/JsonToken;
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, -0x1

    .line 856
    iget-boolean v1, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_closed:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_segment:Lorg/codehaus/jackson/util/TokenBuffer$Segment;

    if-nez v1, :cond_1

    .line 885
    :cond_0
    :goto_0
    return-object v0

    .line 859
    :cond_1
    iget v1, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_segmentPtr:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_segmentPtr:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_2

    .line 860
    const/4 v1, 0x0

    iput v1, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_segmentPtr:I

    .line 861
    iget-object v1, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_segment:Lorg/codehaus/jackson/util/TokenBuffer$Segment;

    invoke-virtual {v1}, Lorg/codehaus/jackson/util/TokenBuffer$Segment;->next()Lorg/codehaus/jackson/util/TokenBuffer$Segment;

    move-result-object v1

    iput-object v1, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_segment:Lorg/codehaus/jackson/util/TokenBuffer$Segment;

    .line 862
    iget-object v1, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_segment:Lorg/codehaus/jackson/util/TokenBuffer$Segment;

    if-eqz v1, :cond_0

    .line 866
    :cond_2
    iget-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_segment:Lorg/codehaus/jackson/util/TokenBuffer$Segment;

    iget v1, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_segmentPtr:I

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/util/TokenBuffer$Segment;->type(I)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    .line 868
    iget-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_5

    .line 869
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_currentObject()Ljava/lang/Object;

    move-result-object v0

    .line 870
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_4

    check-cast v0, Ljava/lang/String;

    .line 871
    :goto_1
    iget-object v1, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/impl/JsonReadContext;->setCurrentName(Ljava/lang/String;)V

    .line 885
    :cond_3
    :goto_2
    iget-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    goto :goto_0

    .line 870
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 872
    :cond_5
    iget-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_6

    .line 873
    iget-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v0, v3, v3}, Lorg/codehaus/jackson/impl/JsonReadContext;->createChildObjectContext(II)Lorg/codehaus/jackson/impl/JsonReadContext;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    goto :goto_2

    .line 874
    :cond_6
    iget-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_7

    .line 875
    iget-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v0, v3, v3}, Lorg/codehaus/jackson/impl/JsonReadContext;->createChildArrayContext(II)Lorg/codehaus/jackson/impl/JsonReadContext;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    goto :goto_2

    .line 876
    :cond_7
    iget-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v1, :cond_8

    iget-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->END_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_3

    .line 879
    :cond_8
    iget-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonReadContext;->getParent()Lorg/codehaus/jackson/impl/JsonReadContext;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    .line 881
    iget-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    if-nez v0, :cond_3

    .line 882
    invoke-static {v3, v3}, Lorg/codehaus/jackson/impl/JsonReadContext;->createRootContext(II)Lorg/codehaus/jackson/impl/JsonReadContext;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    goto :goto_2
.end method

.method public final setLocation(Lorg/codehaus/jackson/JsonLocation;)V
    .locals 0
    .parameter

    .prologue
    .line 804
    iput-object p1, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_location:Lorg/codehaus/jackson/JsonLocation;

    .line 805
    return-void
.end method

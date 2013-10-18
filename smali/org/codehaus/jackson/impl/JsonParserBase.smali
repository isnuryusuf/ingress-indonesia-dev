.class public abstract Lorg/codehaus/jackson/impl/JsonParserBase;
.super Lorg/codehaus/jackson/impl/JsonParserMinimalBase;
.source "SourceFile"


# static fields
.field static final BD_MAX_INT:Ljava/math/BigDecimal;

.field static final BD_MAX_LONG:Ljava/math/BigDecimal;

.field static final BD_MIN_INT:Ljava/math/BigDecimal;

.field static final BD_MIN_LONG:Ljava/math/BigDecimal;


# instance fields
.field protected _binaryValue:[B

.field protected _byteArrayBuilder:Lorg/codehaus/jackson/util/ByteArrayBuilder;

.field protected _closed:Z

.field protected _currInputProcessed:J

.field protected _currInputRow:I

.field protected _currInputRowStart:I

.field protected _expLength:I

.field protected _fractLength:I

.field protected _inputEnd:I

.field protected _inputPtr:I

.field protected _intLength:I

.field protected final _ioContext:Lorg/codehaus/jackson/io/IOContext;

.field protected _nameCopied:Z

.field protected _nameCopyBuffer:[C

.field protected _nextToken:Lorg/codehaus/jackson/JsonToken;

.field protected _numTypesValid:I

.field protected _numberBigDecimal:Ljava/math/BigDecimal;

.field protected _numberBigInt:Ljava/math/BigInteger;

.field protected _numberDouble:D

.field protected _numberInt:I

.field protected _numberLong:J

.field protected _numberNegative:Z

.field protected _parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

.field protected final _textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

.field protected _tokenInputCol:I

.field protected _tokenInputRow:I

.field protected _tokenInputTotal:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const-wide v3, 0x7fffffffffffffffL

    const-wide/high16 v1, -0x8000

    .line 195
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(J)V

    sput-object v0, Lorg/codehaus/jackson/impl/JsonParserBase;->BD_MIN_LONG:Ljava/math/BigDecimal;

    .line 196
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v3, v4}, Ljava/math/BigDecimal;-><init>(J)V

    sput-object v0, Lorg/codehaus/jackson/impl/JsonParserBase;->BD_MAX_LONG:Ljava/math/BigDecimal;

    .line 198
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(J)V

    sput-object v0, Lorg/codehaus/jackson/impl/JsonParserBase;->BD_MIN_INT:Ljava/math/BigDecimal;

    .line 199
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v3, v4}, Ljava/math/BigDecimal;-><init>(J)V

    sput-object v0, Lorg/codehaus/jackson/impl/JsonParserBase;->BD_MAX_INT:Ljava/math/BigDecimal;

    return-void
.end method

.method protected constructor <init>(Lorg/codehaus/jackson/io/IOContext;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 293
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/JsonParserMinimalBase;-><init>()V

    .line 54
    iput v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    .line 59
    iput v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    .line 71
    iput-wide v3, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_currInputProcessed:J

    .line 77
    iput v1, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_currInputRow:I

    .line 85
    iput v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_currInputRowStart:I

    .line 101
    iput-wide v3, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_tokenInputTotal:J

    .line 106
    iput v1, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_tokenInputRow:I

    .line 112
    iput v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_tokenInputCol:I

    .line 151
    iput-object v2, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_nameCopyBuffer:[C

    .line 158
    iput-boolean v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_nameCopied:Z

    .line 164
    iput-object v2, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_byteArrayBuilder:Lorg/codehaus/jackson/util/ByteArrayBuilder;

    .line 241
    iput v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    .line 294
    iput p2, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_features:I

    .line 295
    iput-object p1, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_ioContext:Lorg/codehaus/jackson/io/IOContext;

    .line 296
    invoke-virtual {p1}, Lorg/codehaus/jackson/io/IOContext;->constructTextBuffer()Lorg/codehaus/jackson/util/TextBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    .line 297
    invoke-static {}, Lorg/codehaus/jackson/impl/JsonReadContext;->createRootContext()Lorg/codehaus/jackson/impl/JsonReadContext;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    .line 298
    return-void
.end method

.method private final _parseSlowFloatValue(I)V
    .locals 3
    .parameter

    .prologue
    const/16 v0, 0x10

    .line 774
    if-ne p1, v0, :cond_0

    .line 775
    :try_start_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/TextBuffer;->contentsAsDecimal()Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;

    .line 776
    const/16 v0, 0x10

    iput v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    .line 786
    :goto_0
    return-void

    .line 779
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/TextBuffer;->contentsAsDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberDouble:D

    .line 780
    const/16 v0, 0x8

    iput v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 782
    :catch_0
    move-exception v0

    .line 784
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Malformed numeric value \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v2}, Lorg/codehaus/jackson/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lorg/codehaus/jackson/impl/JsonParserBase;->_wrapError(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private final _parseSlowIntValue(I[CII)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 791
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v1

    .line 794
    :try_start_0
    iget-boolean v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberNegative:Z

    invoke-static {p2, p3, p4, v0}, Lorg/codehaus/jackson/io/NumberInput;->inLongRange([CIIZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 796
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberLong:J

    .line 797
    const/4 v0, 0x2

    iput v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    .line 807
    :goto_0
    return-void

    .line 800
    :cond_0
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberBigInt:Ljava/math/BigInteger;

    .line 801
    const/4 v0, 0x4

    iput v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 803
    :catch_0
    move-exception v0

    .line 805
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Malformed numeric value \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lorg/codehaus/jackson/impl/JsonParserBase;->_wrapError(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method protected abstract _closeInput()V
.end method

.method protected final _decodeBase64Escape(Lorg/codehaus/jackson/Base64Variant;CI)I
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1020
    const/16 v0, 0x5c

    if-eq p2, v0, :cond_0

    .line 1021
    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/impl/JsonParserBase;->reportInvalidBase64Char(Lorg/codehaus/jackson/Base64Variant;II)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 1023
    :cond_0
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonParserBase;->_decodeEscaped()C

    move-result v1

    .line 1025
    const/16 v0, 0x20

    if-gt v1, v0, :cond_2

    .line 1026
    if-nez p3, :cond_2

    .line 1027
    const/4 v0, -0x1

    .line 1035
    :cond_1
    return v0

    .line 1031
    :cond_2
    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/Base64Variant;->decodeBase64Char(C)I

    move-result v0

    .line 1032
    if-gez v0, :cond_1

    .line 1033
    invoke-virtual {p0, p1, v1, p3}, Lorg/codehaus/jackson/impl/JsonParserBase;->reportInvalidBase64Char(Lorg/codehaus/jackson/Base64Variant;II)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method protected final _decodeBase64Escape(Lorg/codehaus/jackson/Base64Variant;II)I
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 998
    const/16 v0, 0x5c

    if-eq p2, v0, :cond_0

    .line 999
    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/impl/JsonParserBase;->reportInvalidBase64Char(Lorg/codehaus/jackson/Base64Variant;II)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 1001
    :cond_0
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonParserBase;->_decodeEscaped()C

    move-result v1

    .line 1003
    const/16 v0, 0x20

    if-gt v1, v0, :cond_2

    .line 1004
    if-nez p3, :cond_2

    .line 1005
    const/4 v0, -0x1

    .line 1013
    :cond_1
    return v0

    .line 1009
    :cond_2
    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/Base64Variant;->decodeBase64Char(I)I

    move-result v0

    .line 1010
    if-gez v0, :cond_1

    .line 1011
    invoke-virtual {p0, p1, v1, p3}, Lorg/codehaus/jackson/impl/JsonParserBase;->reportInvalidBase64Char(Lorg/codehaus/jackson/Base64Variant;II)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method protected _decodeEscaped()C
    .locals 1

    .prologue
    .line 991
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public _getByteArrayBuilder()Lorg/codehaus/jackson/util/ByteArrayBuilder;
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_byteArrayBuilder:Lorg/codehaus/jackson/util/ByteArrayBuilder;

    if-nez v0, :cond_0

    .line 493
    new-instance v0, Lorg/codehaus/jackson/util/ByteArrayBuilder;

    invoke-direct {v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_byteArrayBuilder:Lorg/codehaus/jackson/util/ByteArrayBuilder;

    .line 497
    :goto_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_byteArrayBuilder:Lorg/codehaus/jackson/util/ByteArrayBuilder;

    return-object v0

    .line 495
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_byteArrayBuilder:Lorg/codehaus/jackson/util/ByteArrayBuilder;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->reset()V

    goto :goto_0
.end method

.method protected _handleEOF()V
    .locals 3

    .prologue
    .line 466
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonReadContext;->inRoot()Z

    move-result v0

    if-nez v0, :cond_0

    .line 467
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, ": expected close marker for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v1}, Lorg/codehaus/jackson/impl/JsonReadContext;->getTypeDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " (from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    iget-object v2, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_ioContext:Lorg/codehaus/jackson/io/IOContext;

    invoke-virtual {v2}, Lorg/codehaus/jackson/io/IOContext;->getSourceReference()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/codehaus/jackson/impl/JsonReadContext;->getStartLocation(Ljava/lang/Object;)Lorg/codehaus/jackson/JsonLocation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/JsonParserBase;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 469
    :cond_0
    return-void
.end method

.method protected _parseNumericValue(I)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 715
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_currToken:Lorg/codehaus/jackson/JsonToken;

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_7

    .line 716
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/TextBuffer;->getTextBuffer()[C

    move-result-object v1

    .line 717
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/TextBuffer;->getTextOffset()I

    move-result v0

    .line 718
    iget v2, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_intLength:I

    .line 719
    iget-boolean v3, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberNegative:Z

    if-eqz v3, :cond_0

    .line 720
    add-int/lit8 v0, v0, 0x1

    .line 722
    :cond_0
    const/16 v3, 0x9

    if-gt v2, v3, :cond_2

    .line 723
    invoke-static {v1, v0, v2}, Lorg/codehaus/jackson/io/NumberInput;->parseInt([CII)I

    move-result v0

    .line 724
    iget-boolean v1, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberNegative:Z

    if-eqz v1, :cond_1

    neg-int v0, v0

    :cond_1
    iput v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberInt:I

    .line 725
    iput v4, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    .line 761
    :goto_0
    return-void

    .line 728
    :cond_2
    const/16 v3, 0x12

    if-gt v2, v3, :cond_6

    .line 729
    invoke-static {v1, v0, v2}, Lorg/codehaus/jackson/io/NumberInput;->parseLong([CII)J

    move-result-wide v0

    .line 730
    iget-boolean v3, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberNegative:Z

    if-eqz v3, :cond_3

    .line 731
    neg-long v0, v0

    .line 734
    :cond_3
    const/16 v3, 0xa

    if-ne v2, v3, :cond_5

    .line 735
    iget-boolean v2, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberNegative:Z

    if-eqz v2, :cond_4

    .line 736
    const-wide/32 v2, -0x80000000

    cmp-long v2, v0, v2

    if-ltz v2, :cond_5

    .line 737
    long-to-int v0, v0

    iput v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberInt:I

    .line 738
    iput v4, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    goto :goto_0

    .line 742
    :cond_4
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_5

    .line 743
    long-to-int v0, v0

    iput v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberInt:I

    .line 744
    iput v4, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    goto :goto_0

    .line 749
    :cond_5
    iput-wide v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberLong:J

    .line 750
    const/4 v0, 0x2

    iput v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    goto :goto_0

    .line 753
    :cond_6
    invoke-direct {p0, p1, v1, v0, v2}, Lorg/codehaus/jackson/impl/JsonParserBase;->_parseSlowIntValue(I[CII)V

    goto :goto_0

    .line 756
    :cond_7
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_currToken:Lorg/codehaus/jackson/JsonToken;

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_FLOAT:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_8

    .line 757
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/impl/JsonParserBase;->_parseSlowFloatValue(I)V

    goto :goto_0

    .line 760
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Current token ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_currToken:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ") not numeric, can not use numeric value accessors"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/JsonParserBase;->_reportError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected _releaseBuffers()V
    .locals 2

    .prologue
    .line 450
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/TextBuffer;->releaseBuffers()V

    .line 451
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_nameCopyBuffer:[C

    .line 452
    if-eqz v0, :cond_0

    .line 453
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_nameCopyBuffer:[C

    .line 454
    iget-object v1, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_ioContext:Lorg/codehaus/jackson/io/IOContext;

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/io/IOContext;->releaseNameCopyBuffer([C)V

    .line 456
    :cond_0
    return-void
.end method

.method protected _reportMismatchedEndMarker(IC)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 480
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    iget-object v2, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_ioContext:Lorg/codehaus/jackson/io/IOContext;

    invoke-virtual {v2}, Lorg/codehaus/jackson/io/IOContext;->getSourceReference()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/codehaus/jackson/impl/JsonReadContext;->getStartLocation(Ljava/lang/Object;)Lorg/codehaus/jackson/JsonLocation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 481
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unexpected close marker \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\': expected \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\' (for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v2}, Lorg/codehaus/jackson/impl/JsonReadContext;->getTypeDesc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " starting at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/JsonParserBase;->_reportError(Ljava/lang/String;)V

    .line 482
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 330
    iget-boolean v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_closed:Z

    if-nez v0, :cond_0

    .line 331
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_closed:Z

    .line 333
    :try_start_0
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonParserBase;->_closeInput()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 337
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonParserBase;->_releaseBuffers()V

    .line 340
    :cond_0
    return-void

    .line 337
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonParserBase;->_releaseBuffers()V

    throw v0
.end method

.method protected convertNumberToBigDecimal()V
    .locals 2

    .prologue
    .line 926
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 931
    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonParserBase;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;

    .line 941
    :goto_0
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    .line 942
    return-void

    .line 932
    :cond_0
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 933
    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberBigInt:Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;

    goto :goto_0

    .line 934
    :cond_1
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 935
    iget-wide v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberLong:J

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;

    goto :goto_0

    .line 936
    :cond_2
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 937
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberInt:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;

    goto :goto_0

    .line 939
    :cond_3
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonParserBase;->_throwInternal()V

    goto :goto_0
.end method

.method protected convertNumberToBigInteger()V
    .locals 2

    .prologue
    .line 878
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    .line 880
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberBigInt:Ljava/math/BigInteger;

    .line 890
    :goto_0
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    .line 891
    return-void

    .line 881
    :cond_0
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 882
    iget-wide v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberLong:J

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberBigInt:Ljava/math/BigInteger;

    goto :goto_0

    .line 883
    :cond_1
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 884
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberInt:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberBigInt:Ljava/math/BigInteger;

    goto :goto_0

    .line 885
    :cond_2
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 886
    iget-wide v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberDouble:D

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberBigInt:Ljava/math/BigInteger;

    goto :goto_0

    .line 888
    :cond_3
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonParserBase;->_throwInternal()V

    goto :goto_0
.end method

.method protected convertNumberToDouble()V
    .locals 2

    .prologue
    .line 902
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    .line 903
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberDouble:D

    .line 914
    :goto_0
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    .line 915
    return-void

    .line 904
    :cond_0
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 905
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberBigInt:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberDouble:D

    goto :goto_0

    .line 906
    :cond_1
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 907
    iget-wide v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberLong:J

    long-to-double v0, v0

    iput-wide v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberDouble:D

    goto :goto_0

    .line 908
    :cond_2
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 909
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberInt:I

    int-to-double v0, v0

    iput-wide v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberDouble:D

    goto :goto_0

    .line 911
    :cond_3
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonParserBase;->_throwInternal()V

    goto :goto_0
.end method

.method protected convertNumberToInt()V
    .locals 5

    .prologue
    .line 819
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 821
    iget-wide v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberLong:J

    long-to-int v0, v0

    .line 822
    int-to-long v1, v0

    iget-wide v3, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberLong:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 823
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Numeric value ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonParserBase;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") out of range of int"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/impl/JsonParserBase;->_reportError(Ljava/lang/String;)V

    .line 825
    :cond_0
    iput v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberInt:I

    .line 845
    :goto_0
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    .line 846
    return-void

    .line 826
    :cond_1
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 828
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberBigInt:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    iput v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberInt:I

    goto :goto_0

    .line 829
    :cond_2
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_5

    .line 831
    iget-wide v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberDouble:D

    const-wide/high16 v2, -0x3e20

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_3

    iget-wide v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberDouble:D

    const-wide v2, 0x41dfffffffc00000L

    cmpl-double v0, v0, v2

    if-lez v0, :cond_4

    .line 832
    :cond_3
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonParserBase;->reportOverflowInt()V

    .line 834
    :cond_4
    iget-wide v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberDouble:D

    double-to-int v0, v0

    iput v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberInt:I

    goto :goto_0

    .line 835
    :cond_5
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_8

    .line 836
    sget-object v0, Lorg/codehaus/jackson/impl/JsonParserBase;->BD_MIN_INT:Ljava/math/BigDecimal;

    iget-object v1, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-gtz v0, :cond_6

    sget-object v0, Lorg/codehaus/jackson/impl/JsonParserBase;->BD_MAX_INT:Ljava/math/BigDecimal;

    iget-object v1, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-gez v0, :cond_7

    .line 838
    :cond_6
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonParserBase;->reportOverflowInt()V

    .line 840
    :cond_7
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->intValue()I

    move-result v0

    iput v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberInt:I

    goto :goto_0

    .line 842
    :cond_8
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonParserBase;->_throwInternal()V

    goto :goto_0
.end method

.method protected convertNumberToLong()V
    .locals 4

    .prologue
    .line 851
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 852
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberInt:I

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberLong:J

    .line 872
    :goto_0
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    .line 873
    return-void

    .line 853
    :cond_0
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 855
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberBigInt:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberLong:J

    goto :goto_0

    .line 856
    :cond_1
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_4

    .line 858
    iget-wide v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberDouble:D

    const-wide/high16 v2, -0x3c20

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_2

    iget-wide v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberDouble:D

    const-wide/high16 v2, 0x43e0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_3

    .line 859
    :cond_2
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonParserBase;->reportOverflowLong()V

    .line 861
    :cond_3
    iget-wide v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberDouble:D

    double-to-long v0, v0

    iput-wide v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberLong:J

    goto :goto_0

    .line 862
    :cond_4
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_7

    .line 863
    sget-object v0, Lorg/codehaus/jackson/impl/JsonParserBase;->BD_MIN_LONG:Ljava/math/BigDecimal;

    iget-object v1, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-gtz v0, :cond_5

    sget-object v0, Lorg/codehaus/jackson/impl/JsonParserBase;->BD_MAX_LONG:Ljava/math/BigDecimal;

    iget-object v1, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-gez v0, :cond_6

    .line 865
    :cond_5
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonParserBase;->reportOverflowLong()V

    .line 867
    :cond_6
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberLong:J

    goto :goto_0

    .line 869
    :cond_7
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonParserBase;->_throwInternal()V

    goto :goto_0
.end method

.method public getBigIntegerValue()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 642
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_1

    .line 643
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    if-nez v0, :cond_0

    .line 644
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/JsonParserBase;->_parseNumericValue(I)V

    .line 646
    :cond_0
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_1

    .line 647
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonParserBase;->convertNumberToBigInteger()V

    .line 650
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberBigInt:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getCurrentLocation()Lorg/codehaus/jackson/JsonLocation;
    .locals 8

    .prologue
    .line 372
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    iget v1, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_currInputRowStart:I

    sub-int/2addr v0, v1

    add-int/lit8 v5, v0, 0x1

    .line 373
    new-instance v0, Lorg/codehaus/jackson/JsonLocation;

    iget-object v1, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_ioContext:Lorg/codehaus/jackson/io/IOContext;

    invoke-virtual {v1}, Lorg/codehaus/jackson/io/IOContext;->getSourceReference()Ljava/lang/Object;

    move-result-object v1

    iget-wide v2, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_currInputProcessed:J

    iget v4, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    int-to-long v6, v4

    add-long/2addr v2, v6

    const-wide/16 v6, 0x1

    sub-long/2addr v2, v6

    iget v4, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_currInputRow:I

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/JsonLocation;-><init>(Ljava/lang/Object;JII)V

    return-object v0
.end method

.method public getCurrentName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 320
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_currToken:Lorg/codehaus/jackson/JsonToken;

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_currToken:Lorg/codehaus/jackson/JsonToken;

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_1

    .line 321
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonReadContext;->getParent()Lorg/codehaus/jackson/impl/JsonReadContext;

    move-result-object v0

    .line 322
    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonReadContext;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    .line 324
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonReadContext;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDecimalValue()Ljava/math/BigDecimal;
    .locals 1

    .prologue
    .line 685
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_1

    .line 686
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    if-nez v0, :cond_0

    .line 687
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/JsonParserBase;->_parseNumericValue(I)V

    .line 689
    :cond_0
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_1

    .line 690
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonParserBase;->convertNumberToBigDecimal()V

    .line 693
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public getDoubleValue()D
    .locals 2

    .prologue
    .line 671
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_1

    .line 672
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    if-nez v0, :cond_0

    .line 673
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/JsonParserBase;->_parseNumericValue(I)V

    .line 675
    :cond_0
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_1

    .line 676
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonParserBase;->convertNumberToDouble()V

    .line 679
    :cond_1
    iget-wide v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberDouble:D

    return-wide v0
.end method

.method public getFloatValue()F
    .locals 2

    .prologue
    .line 656
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonParserBase;->getDoubleValue()D

    move-result-wide v0

    .line 665
    double-to-float v0, v0

    return v0
.end method

.method public getIntValue()I
    .locals 1

    .prologue
    .line 614
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    .line 615
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    if-nez v0, :cond_0

    .line 616
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/JsonParserBase;->_parseNumericValue(I)V

    .line 618
    :cond_0
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    .line 619
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonParserBase;->convertNumberToInt()V

    .line 622
    :cond_1
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberInt:I

    return v0
.end method

.method public getLongValue()J
    .locals 2

    .prologue
    .line 628
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    .line 629
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    if-nez v0, :cond_0

    .line 630
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/JsonParserBase;->_parseNumericValue(I)V

    .line 632
    :cond_0
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    .line 633
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonParserBase;->convertNumberToLong()V

    .line 636
    :cond_1
    iget-wide v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberLong:J

    return-wide v0
.end method

.method public getNumberType()Lorg/codehaus/jackson/JsonParser$NumberType;
    .locals 2

    .prologue
    .line 586
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    if-nez v0, :cond_0

    .line 587
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/JsonParserBase;->_parseNumericValue(I)V

    .line 589
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_currToken:Lorg/codehaus/jackson/JsonToken;

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_3

    .line 590
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 591
    sget-object v0, Lorg/codehaus/jackson/JsonParser$NumberType;->INT:Lorg/codehaus/jackson/JsonParser$NumberType;

    .line 608
    :goto_0
    return-object v0

    .line 593
    :cond_1
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 594
    sget-object v0, Lorg/codehaus/jackson/JsonParser$NumberType;->LONG:Lorg/codehaus/jackson/JsonParser$NumberType;

    goto :goto_0

    .line 596
    :cond_2
    sget-object v0, Lorg/codehaus/jackson/JsonParser$NumberType;->BIG_INTEGER:Lorg/codehaus/jackson/JsonParser$NumberType;

    goto :goto_0

    .line 605
    :cond_3
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 606
    sget-object v0, Lorg/codehaus/jackson/JsonParser$NumberType;->BIG_DECIMAL:Lorg/codehaus/jackson/JsonParser$NumberType;

    goto :goto_0

    .line 608
    :cond_4
    sget-object v0, Lorg/codehaus/jackson/JsonParser$NumberType;->DOUBLE:Lorg/codehaus/jackson/JsonParser$NumberType;

    goto :goto_0
.end method

.method public getNumberValue()Ljava/lang/Number;
    .locals 2

    .prologue
    .line 553
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    if-nez v0, :cond_0

    .line 554
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/JsonParserBase;->_parseNumericValue(I)V

    .line 557
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_currToken:Lorg/codehaus/jackson/JsonToken;

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_4

    .line 558
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 559
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberInt:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 580
    :goto_0
    return-object v0

    .line 561
    :cond_1
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 562
    iget-wide v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberLong:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 564
    :cond_2
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 565
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberBigInt:Ljava/math/BigInteger;

    goto :goto_0

    .line 568
    :cond_3
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;

    goto :goto_0

    .line 574
    :cond_4
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_5

    .line 575
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;

    goto :goto_0

    .line 577
    :cond_5
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_6

    .line 578
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonParserBase;->_throwInternal()V

    .line 580
    :cond_6
    iget-wide v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberDouble:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0
.end method

.method public final getTokenCharacterOffset()J
    .locals 2

    .prologue
    .line 402
    iget-wide v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_tokenInputTotal:J

    return-wide v0
.end method

.method public final getTokenColumnNr()I
    .locals 1

    .prologue
    .line 406
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_tokenInputCol:I

    .line 407
    if-gez v0, :cond_0

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final getTokenLineNr()I
    .locals 1

    .prologue
    .line 403
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_tokenInputRow:I

    return v0
.end method

.method public getTokenLocation()Lorg/codehaus/jackson/JsonLocation;
    .locals 6

    .prologue
    .line 359
    new-instance v0, Lorg/codehaus/jackson/JsonLocation;

    iget-object v1, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_ioContext:Lorg/codehaus/jackson/io/IOContext;

    invoke-virtual {v1}, Lorg/codehaus/jackson/io/IOContext;->getSourceReference()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonParserBase;->getTokenCharacterOffset()J

    move-result-wide v2

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonParserBase;->getTokenLineNr()I

    move-result v4

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonParserBase;->getTokenColumnNr()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/JsonLocation;-><init>(Ljava/lang/Object;JII)V

    return-object v0
.end method

.method public hasTextCharacters()Z
    .locals 2

    .prologue
    .line 387
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_currToken:Lorg/codehaus/jackson/JsonToken;

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    .line 388
    const/4 v0, 0x1

    .line 393
    :goto_0
    return v0

    .line 390
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_currToken:Lorg/codehaus/jackson/JsonToken;

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_1

    .line 391
    iget-boolean v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_nameCopied:Z

    goto :goto_0

    .line 393
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract loadMore()Z
.end method

.method protected final loadMoreGuaranteed()V
    .locals 1

    .prologue
    .line 419
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonParserBase;->loadMore()Z

    move-result v0

    if-nez v0, :cond_0

    .line 420
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonParserBase;->_reportInvalidEOF()V

    .line 422
    :cond_0
    return-void
.end method

.method protected reportInvalidBase64Char(Lorg/codehaus/jackson/Base64Variant;II)Ljava/lang/IllegalArgumentException;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1041
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/codehaus/jackson/impl/JsonParserBase;->reportInvalidBase64Char(Lorg/codehaus/jackson/Base64Variant;IILjava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    return-object v0
.end method

.method protected reportInvalidBase64Char(Lorg/codehaus/jackson/Base64Variant;IILjava/lang/String;)Ljava/lang/IllegalArgumentException;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1052
    const/16 v0, 0x20

    if-gt p2, v0, :cond_1

    .line 1053
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Illegal white space character (code 0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ") as character #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, p3, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " of 4-char base64 unit: can only used between units"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1062
    :goto_0
    if-eqz p4, :cond_0

    .line 1063
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1065
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 1054
    :cond_1
    invoke-virtual {p1, p2}, Lorg/codehaus/jackson/Base64Variant;->usesPaddingChar(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1055
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Unexpected padding character (\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/codehaus/jackson/Base64Variant;->getPaddingChar()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\') as character #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, p3, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " of 4-char base64 unit: padding only legal as 3rd or 4th character"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1056
    :cond_2
    invoke-static {p2}, Ljava/lang/Character;->isDefined(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p2}, Ljava/lang/Character;->isISOControl(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1058
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Illegal character (code 0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ") in base64 content"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1060
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Illegal character \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\' (code 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ") in base64 content"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method protected reportInvalidNumber(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 963
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Invalid numeric value: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/JsonParserBase;->_reportError(Ljava/lang/String;)V

    .line 964
    return-void
.end method

.method protected reportOverflowInt()V
    .locals 2

    .prologue
    .line 969
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Numeric value ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonParserBase;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ") out of range of int (-2147483648 - 2147483647)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/JsonParserBase;->_reportError(Ljava/lang/String;)V

    .line 970
    return-void
.end method

.method protected reportOverflowLong()V
    .locals 2

    .prologue
    .line 975
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Numeric value ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonParserBase;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ") out of range of long (-9223372036854775808 - 9223372036854775807)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/JsonParserBase;->_reportError(Ljava/lang/String;)V

    .line 976
    return-void
.end method

.method protected reportUnexpectedNumberChar(ILjava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 953
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Unexpected character ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/codehaus/jackson/impl/JsonParserBase;->_getCharDesc(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ") in numeric value"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 954
    if-eqz p2, :cond_0

    .line 955
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 957
    :cond_0
    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/JsonParserBase;->_reportError(Ljava/lang/String;)V

    .line 958
    return-void
.end method

.method protected final reset(ZIII)Lorg/codehaus/jackson/JsonToken;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 510
    if-gtz p3, :cond_0

    if-gtz p4, :cond_0

    .line 511
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/impl/JsonParserBase;->resetInt(ZI)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 513
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/codehaus/jackson/impl/JsonParserBase;->resetFloat(ZIII)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_0
.end method

.method protected final resetAsNaN(Ljava/lang/String;D)Lorg/codehaus/jackson/JsonToken;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 538
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/util/TextBuffer;->resetWithString(Ljava/lang/String;)V

    .line 539
    iput-wide p2, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberDouble:D

    .line 540
    const/16 v0, 0x8

    iput v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    .line 541
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_FLOAT:Lorg/codehaus/jackson/JsonToken;

    return-object v0
.end method

.method protected final resetFloat(ZIII)Lorg/codehaus/jackson/JsonToken;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 528
    iput-boolean p1, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberNegative:Z

    .line 529
    iput p2, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_intLength:I

    .line 530
    iput p3, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_fractLength:I

    .line 531
    iput p4, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_expLength:I

    .line 532
    const/4 v0, 0x0

    iput v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    .line 533
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_FLOAT:Lorg/codehaus/jackson/JsonToken;

    return-object v0
.end method

.method protected final resetInt(ZI)Lorg/codehaus/jackson/JsonToken;
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 518
    iput-boolean p1, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberNegative:Z

    .line 519
    iput p2, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_intLength:I

    .line 520
    iput v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_fractLength:I

    .line 521
    iput v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_expLength:I

    .line 522
    iput v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    .line 523
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lorg/codehaus/jackson/JsonToken;

    return-object v0
.end method

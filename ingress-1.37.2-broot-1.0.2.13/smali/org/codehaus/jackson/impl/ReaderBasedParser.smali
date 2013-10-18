.class public final Lorg/codehaus/jackson/impl/ReaderBasedParser;
.super Lorg/codehaus/jackson/impl/JsonParserBase;
.source "SourceFile"


# instance fields
.field protected _inputBuffer:[C

.field protected _objectCodec:Lorg/codehaus/jackson/ObjectCodec;

.field protected _reader:Ljava/io/Reader;

.field protected final _symbols:Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;

.field protected _tokenIncomplete:Z


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/io/IOContext;ILjava/io/Reader;Lorg/codehaus/jackson/ObjectCodec;Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lorg/codehaus/jackson/impl/JsonParserBase;-><init>(Lorg/codehaus/jackson/io/IOContext;I)V

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_tokenIncomplete:Z

    .line 70
    iput-object p3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_reader:Ljava/io/Reader;

    .line 71
    invoke-virtual {p1}, Lorg/codehaus/jackson/io/IOContext;->allocTokenBuffer()[C

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    .line 72
    iput-object p4, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_objectCodec:Lorg/codehaus/jackson/ObjectCodec;

    .line 73
    iput-object p5, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_symbols:Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;

    .line 74
    return-void
.end method

.method private final _nextAfterName()Lorg/codehaus/jackson/JsonToken;
    .locals 4

    .prologue
    .line 499
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_nameCopied:Z

    .line 500
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_nextToken:Lorg/codehaus/jackson/JsonToken;

    .line 501
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_nextToken:Lorg/codehaus/jackson/JsonToken;

    .line 503
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_1

    .line 504
    iget-object v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_tokenInputRow:I

    iget v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_tokenInputCol:I

    invoke-virtual {v1, v2, v3}, Lorg/codehaus/jackson/impl/JsonReadContext;->createChildArrayContext(II)Lorg/codehaus/jackson/impl/JsonReadContext;

    move-result-object v1

    iput-object v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    .line 508
    :cond_0
    :goto_0
    iput-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    return-object v0

    .line 505
    :cond_1
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    .line 506
    iget-object v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_tokenInputRow:I

    iget v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_tokenInputCol:I

    invoke-virtual {v1, v2, v3}, Lorg/codehaus/jackson/impl/JsonReadContext;->createChildObjectContext(II)Lorg/codehaus/jackson/impl/JsonReadContext;

    move-result-object v1

    iput-object v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    goto :goto_0
.end method

.method private _parseFieldName2(III)Ljava/lang/String;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v5, 0x5c

    .line 1014
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    iget-object v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    sub-int/2addr v2, p1

    invoke-virtual {v0, v1, p1, v2}, Lorg/codehaus/jackson/util/TextBuffer;->resetWithShared([CII)V

    .line 1019
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/TextBuffer;->getCurrentSegment()[C

    move-result-object v1

    .line 1020
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/TextBuffer;->getCurrentSegmentSize()I

    move-result v0

    .line 1023
    :goto_0
    iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    iget v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    if-lt v2, v3, :cond_0

    .line 1024
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->loadMore()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1025
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, ": was expecting closing \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v3, p3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\' for name"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 1028
    :cond_0
    iget-object v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    aget-char v3, v2, v3

    .line 1030
    if-gt v3, v5, :cond_2

    .line 1031
    if-ne v3, v5, :cond_1

    .line 1036
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_decodeEscaped()C

    move-result v2

    .line 1046
    :goto_1
    mul-int/lit8 v4, p2, 0x1f

    add-int p2, v4, v3

    .line 1048
    add-int/lit8 v3, v0, 0x1

    aput-char v2, v1, v0

    .line 1051
    array-length v0, v1

    if-lt v3, v0, :cond_4

    .line 1052
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v1

    .line 1053
    const/4 v0, 0x0

    goto :goto_0

    .line 1037
    :cond_1
    if-gt v3, p3, :cond_2

    .line 1038
    if-eq v3, p3, :cond_3

    .line 1039
    const/16 v2, 0x20

    if-ge v3, v2, :cond_2

    .line 1042
    const-string/jumbo v2, "name"

    invoke-virtual {p0, v3, v2}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_throwUnquotedSpace(ILjava/lang/String;)V

    :cond_2
    move v2, v3

    goto :goto_1

    .line 1056
    :cond_3
    iget-object v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/util/TextBuffer;->setCurrentLength(I)V

    .line 1058
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    .line 1059
    invoke-virtual {v0}, Lorg/codehaus/jackson/util/TextBuffer;->getTextBuffer()[C

    move-result-object v1

    .line 1060
    invoke-virtual {v0}, Lorg/codehaus/jackson/util/TextBuffer;->getTextOffset()I

    move-result v2

    .line 1061
    invoke-virtual {v0}, Lorg/codehaus/jackson/util/TextBuffer;->size()I

    move-result v0

    .line 1063
    iget-object v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_symbols:Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;

    invoke-virtual {v3, v1, v2, v0, p2}, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->findSymbol([CIII)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    move v0, v3

    goto :goto_0
.end method

.method private _parseUnusualFieldName2(II[I)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1253
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    iget-object v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    sub-int/2addr v2, p1

    invoke-virtual {v0, v1, p1, v2}, Lorg/codehaus/jackson/util/TextBuffer;->resetWithShared([CII)V

    .line 1254
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/TextBuffer;->getCurrentSegment()[C

    move-result-object v1

    .line 1255
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/TextBuffer;->getCurrentSegmentSize()I

    move-result v0

    .line 1256
    array-length v3, p3

    .line 1259
    :goto_0
    iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    iget v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    if-lt v2, v4, :cond_0

    .line 1260
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->loadMore()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1261
    :cond_0
    iget-object v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    aget-char v4, v2, v4

    .line 1266
    if-gt v4, v3, :cond_2

    .line 1267
    aget v2, p3, v4

    if-eqz v2, :cond_3

    .line 1284
    :cond_1
    iget-object v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/util/TextBuffer;->setCurrentLength(I)V

    .line 1286
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    .line 1287
    invoke-virtual {v0}, Lorg/codehaus/jackson/util/TextBuffer;->getTextBuffer()[C

    move-result-object v1

    .line 1288
    invoke-virtual {v0}, Lorg/codehaus/jackson/util/TextBuffer;->getTextOffset()I

    move-result v2

    .line 1289
    invoke-virtual {v0}, Lorg/codehaus/jackson/util/TextBuffer;->size()I

    move-result v0

    .line 1291
    iget-object v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_symbols:Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;

    invoke-virtual {v3, v1, v2, v0, p2}, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->findSymbol([CIII)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1270
    :cond_2
    invoke-static {v4}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1271
    :cond_3
    iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 1274
    mul-int/lit8 v2, p2, 0x1f

    add-int p2, v2, v4

    .line 1276
    add-int/lit8 v2, v0, 0x1

    aput-char v4, v1, v0

    .line 1279
    array-length v0, v1

    if-lt v2, v0, :cond_4

    .line 1280
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v1

    .line 1281
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_0
.end method

.method private final _skipCComment()V
    .locals 4

    .prologue
    const/16 v3, 0x2a

    .line 1525
    :cond_0
    :goto_0
    iget v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    iget v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->loadMore()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1526
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    aget-char v0, v0, v1

    .line 1527
    if-gt v0, v3, :cond_0

    .line 1528
    if-ne v0, v3, :cond_3

    .line 1529
    iget v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    iget v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    if-lt v0, v1, :cond_2

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->loadMore()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1530
    :cond_2
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    aget-char v0, v0, v1

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_0

    .line 1533
    iget v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 1550
    :goto_1
    return-void

    .line 1538
    :cond_3
    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    .line 1539
    const/16 v1, 0xa

    if-ne v0, v1, :cond_4

    .line 1540
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_skipLF()V

    goto :goto_0

    .line 1541
    :cond_4
    const/16 v1, 0xd

    if-ne v0, v1, :cond_5

    .line 1542
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_skipCR()V

    goto :goto_0

    .line 1543
    :cond_5
    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 1544
    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_throwInvalidSpace(I)V

    goto :goto_0

    .line 1549
    :cond_6
    const-string/jumbo v0, " in a comment"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_reportInvalidEOF(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private final _skipComment()V
    .locals 4

    .prologue
    const/16 v3, 0x2f

    .line 1503
    sget-object v0, Lorg/codehaus/jackson/JsonParser$Feature;->ALLOW_COMMENTS:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->isEnabled(Lorg/codehaus/jackson/JsonParser$Feature;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1504
    const-string/jumbo v0, "maybe a (non-standard) comment? (not recognized as one since Feature \'ALLOW_COMMENTS\' not enabled for parser)"

    invoke-virtual {p0, v3, v0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 1507
    :cond_0
    iget v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    iget v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->loadMore()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1508
    const-string/jumbo v0, " in a comment"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 1510
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    aget-char v0, v0, v1

    .line 1511
    if-ne v0, v3, :cond_2

    .line 1512
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_skipCppComment()V

    .line 1518
    :goto_0
    return-void

    .line 1513
    :cond_2
    const/16 v1, 0x2a

    if-ne v0, v1, :cond_3

    .line 1514
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_skipCComment()V

    goto :goto_0

    .line 1516
    :cond_3
    const-string/jumbo v1, "was expecting either \'*\' or \'/\' for a comment"

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private final _skipCppComment()V
    .locals 3

    .prologue
    .line 1556
    :cond_0
    :goto_0
    iget v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    iget v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->loadMore()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1557
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    aget-char v0, v0, v1

    .line 1558
    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    .line 1559
    const/16 v1, 0xa

    if-ne v0, v1, :cond_3

    .line 1560
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_skipLF()V

    .line 1570
    :cond_2
    :goto_1
    return-void

    .line 1562
    :cond_3
    const/16 v1, 0xd

    if-ne v0, v1, :cond_4

    .line 1563
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_skipCR()V

    goto :goto_1

    .line 1565
    :cond_4
    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 1566
    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_throwInvalidSpace(I)V

    goto :goto_0
.end method

.method private final _skipWS()I
    .locals 4

    .prologue
    const/16 v3, 0x20

    .line 1453
    :cond_0
    :goto_0
    iget v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    iget v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->loadMore()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1454
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    aget-char v0, v0, v1

    .line 1455
    if-le v0, v3, :cond_3

    .line 1456
    const/16 v1, 0x2f

    if-eq v0, v1, :cond_2

    .line 1457
    return v0

    .line 1459
    :cond_2
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_skipComment()V

    goto :goto_0

    .line 1460
    :cond_3
    if-eq v0, v3, :cond_0

    .line 1461
    const/16 v1, 0xa

    if-ne v0, v1, :cond_4

    .line 1462
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_skipLF()V

    goto :goto_0

    .line 1463
    :cond_4
    const/16 v1, 0xd

    if-ne v0, v1, :cond_5

    .line 1464
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_skipCR()V

    goto :goto_0

    .line 1465
    :cond_5
    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 1466
    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_throwInvalidSpace(I)V

    goto :goto_0

    .line 1470
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Unexpected end-of-input within/between "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v1}, Lorg/codehaus/jackson/impl/JsonReadContext;->getTypeDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " entries"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_constructError(Ljava/lang/String;)Lorg/codehaus/jackson/JsonParseException;

    move-result-object v0

    throw v0
.end method

.method private final _skipWSOrEnd()I
    .locals 4

    .prologue
    const/16 v3, 0x20

    .line 1476
    :cond_0
    :goto_0
    iget v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    iget v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->loadMore()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1477
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    aget-char v0, v0, v1

    .line 1478
    if-le v0, v3, :cond_2

    .line 1479
    const/16 v1, 0x2f

    if-ne v0, v1, :cond_6

    .line 1480
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_skipComment()V

    goto :goto_0

    .line 1485
    :cond_2
    if-eq v0, v3, :cond_0

    .line 1486
    const/16 v1, 0xa

    if-ne v0, v1, :cond_3

    .line 1487
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_skipLF()V

    goto :goto_0

    .line 1488
    :cond_3
    const/16 v1, 0xd

    if-ne v0, v1, :cond_4

    .line 1489
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_skipCR()V

    goto :goto_0

    .line 1490
    :cond_4
    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 1491
    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_throwInvalidSpace(I)V

    goto :goto_0

    .line 1496
    :cond_5
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_handleEOF()V

    .line 1497
    const/4 v0, -0x1

    :cond_6
    return v0
.end method

.method private final _verifyNoLeadingZeroes()C
    .locals 5

    .prologue
    const/16 v4, 0x39

    const/16 v1, 0x30

    .line 905
    iget v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    if-lt v0, v2, :cond_1

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->loadMore()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 926
    :cond_0
    :goto_0
    return v0

    .line 908
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    aget-char v0, v0, v2

    .line 910
    if-lt v0, v1, :cond_2

    if-le v0, v4, :cond_3

    :cond_2
    move v0, v1

    .line 911
    goto :goto_0

    .line 913
    :cond_3
    sget-object v2, Lorg/codehaus/jackson/JsonParser$Feature;->ALLOW_NUMERIC_LEADING_ZEROS:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v2}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->isEnabled(Lorg/codehaus/jackson/JsonParser$Feature;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 914
    const-string/jumbo v2, "Leading zeroes not allowed"

    invoke-virtual {p0, v2}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->reportInvalidNumber(Ljava/lang/String;)V

    .line 917
    :cond_4
    iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 918
    if-ne v0, v1, :cond_0

    .line 919
    :cond_5
    iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    iget v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    if-lt v2, v3, :cond_6

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->loadMore()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 920
    :cond_6
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    aget-char v0, v0, v2

    .line 921
    if-lt v0, v1, :cond_7

    if-le v0, v4, :cond_8

    :cond_7
    move v0, v1

    .line 922
    goto :goto_0

    .line 924
    :cond_8
    iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 925
    if-eq v0, v1, :cond_5

    goto :goto_0
.end method

.method private final parseNumberText2(Z)Lorg/codehaus/jackson/JsonToken;
    .locals 14
    .parameter

    .prologue
    const/16 v10, 0x2d

    const/16 v12, 0x39

    const/16 v11, 0x30

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 780
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v4

    .line 784
    if-eqz p1, :cond_18

    .line 785
    aput-char v10, v4, v2

    move v0, v1

    .line 790
    :goto_0
    iget v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    iget v5, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    if-ge v3, v5, :cond_a

    iget-object v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v5, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    aget-char v3, v3, v5

    .line 791
    :goto_1
    if-ne v3, v11, :cond_0

    .line 792
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_verifyNoLeadingZeroes()C

    move-result v3

    :cond_0
    move v5, v2

    move v13, v3

    move-object v3, v4

    move v4, v13

    .line 798
    :goto_2
    if-lt v4, v11, :cond_17

    if-gt v4, v12, :cond_17

    .line 799
    add-int/lit8 v5, v5, 0x1

    .line 800
    array-length v6, v3

    if-lt v0, v6, :cond_1

    .line 801
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v0

    move-object v3, v0

    move v0, v2

    .line 804
    :cond_1
    add-int/lit8 v6, v0, 0x1

    aput-char v4, v3, v0

    .line 805
    iget v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    iget v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    if-lt v0, v4, :cond_b

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->loadMore()Z

    move-result v0

    if-nez v0, :cond_b

    move v7, v1

    move v0, v2

    move v9, v5

    move-object v4, v3

    move v5, v6

    .line 814
    :goto_3
    if-nez v9, :cond_2

    .line 815
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Missing integer part (next char "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_getCharDesc(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, ")"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->reportInvalidNumber(Ljava/lang/String;)V

    .line 820
    :cond_2
    const/16 v3, 0x2e

    if-ne v0, v3, :cond_16

    .line 821
    add-int/lit8 v3, v5, 0x1

    aput-char v0, v4, v5

    move-object v5, v4

    move v4, v3

    move v3, v0

    move v0, v2

    .line 825
    :goto_4
    iget v6, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    iget v8, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    if-lt v6, v8, :cond_c

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->loadMore()Z

    move-result v6

    if-nez v6, :cond_c

    move v6, v1

    .line 841
    :goto_5
    if-nez v0, :cond_3

    .line 842
    const-string/jumbo v7, "Decimal point not followed by a digit"

    invoke-virtual {p0, v3, v7}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->reportUnexpectedNumberChar(ILjava/lang/String;)V

    :cond_3
    move v8, v0

    move v0, v4

    move v13, v3

    move-object v3, v5

    move v5, v13

    .line 847
    :goto_6
    const/16 v4, 0x65

    if-eq v5, v4, :cond_4

    const/16 v4, 0x45

    if-ne v5, v4, :cond_13

    .line 848
    :cond_4
    array-length v4, v3

    if-lt v0, v4, :cond_5

    .line 849
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v0

    move-object v3, v0

    move v0, v2

    .line 852
    :cond_5
    add-int/lit8 v4, v0, 0x1

    aput-char v5, v3, v0

    .line 854
    iget v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    iget v5, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    if-ge v0, v5, :cond_d

    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v5, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    add-int/lit8 v7, v5, 0x1

    iput v7, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    aget-char v5, v0, v5

    .line 857
    :goto_7
    if-eq v5, v10, :cond_6

    const/16 v0, 0x2b

    if-ne v5, v0, :cond_12

    .line 858
    :cond_6
    array-length v0, v3

    if-lt v4, v0, :cond_11

    .line 859
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v3

    move v0, v2

    .line 862
    :goto_8
    add-int/lit8 v4, v0, 0x1

    aput-char v5, v3, v0

    .line 864
    iget v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    iget v5, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    if-ge v0, v5, :cond_e

    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v5, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    add-int/lit8 v7, v5, 0x1

    iput v7, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    aget-char v0, v0, v5

    move-object v5, v3

    move v3, v2

    :goto_9
    move v7, v0

    move v0, v4

    .line 869
    :goto_a
    if-gt v7, v12, :cond_10

    if-lt v7, v11, :cond_10

    .line 870
    add-int/lit8 v3, v3, 0x1

    .line 871
    array-length v4, v5

    if-lt v0, v4, :cond_7

    .line 872
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v5

    move v0, v2

    .line 875
    :cond_7
    add-int/lit8 v4, v0, 0x1

    aput-char v7, v5, v0

    .line 876
    iget v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    iget v10, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    if-lt v0, v10, :cond_f

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->loadMore()Z

    move-result v0

    if-nez v0, :cond_f

    move v2, v3

    move v0, v1

    move v1, v4

    .line 883
    :goto_b
    if-nez v2, :cond_8

    .line 884
    const-string/jumbo v3, "Exponent indicator not followed by a digit"

    invoke-virtual {p0, v7, v3}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->reportUnexpectedNumberChar(ILjava/lang/String;)V

    .line 889
    :cond_8
    :goto_c
    if-nez v0, :cond_9

    .line 890
    iget v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 892
    :cond_9
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/util/TextBuffer;->setCurrentLength(I)V

    .line 894
    invoke-virtual {p0, p1, v9, v8, v2}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->reset(ZIII)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    return-object v0

    .line 790
    :cond_a
    const-string/jumbo v3, "No digit following minus sign"

    invoke-virtual {p0, v3}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->getNextChar(Ljava/lang/String;)C

    move-result v3

    goto/16 :goto_1

    .line 811
    :cond_b
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    add-int/lit8 v7, v4, 0x1

    iput v7, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    aget-char v4, v0, v4

    move v0, v6

    goto/16 :goto_2

    .line 829
    :cond_c
    iget-object v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v6, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    add-int/lit8 v8, v6, 0x1

    iput v8, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    aget-char v3, v3, v6

    .line 830
    if-lt v3, v11, :cond_15

    if-gt v3, v12, :cond_15

    .line 831
    add-int/lit8 v0, v0, 0x1

    .line 834
    array-length v6, v5

    if-lt v4, v6, :cond_14

    .line 835
    iget-object v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v4}, Lorg/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v5

    move v6, v2

    .line 838
    :goto_d
    add-int/lit8 v4, v6, 0x1

    aput-char v3, v5, v6

    goto/16 :goto_4

    .line 854
    :cond_d
    const-string/jumbo v0, "expected a digit for number exponent"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->getNextChar(Ljava/lang/String;)C

    move-result v5

    goto/16 :goto_7

    .line 864
    :cond_e
    const-string/jumbo v0, "expected a digit for number exponent"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->getNextChar(Ljava/lang/String;)C

    move-result v0

    move-object v5, v3

    move v3, v2

    goto/16 :goto_9

    .line 880
    :cond_f
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v7, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    add-int/lit8 v10, v7, 0x1

    iput v10, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    aget-char v0, v0, v7

    goto/16 :goto_9

    :cond_10
    move v2, v3

    move v1, v0

    move v0, v6

    goto :goto_b

    :cond_11
    move v0, v4

    goto/16 :goto_8

    :cond_12
    move v7, v5

    move v0, v4

    move-object v5, v3

    move v3, v2

    goto/16 :goto_a

    :cond_13
    move v1, v0

    move v0, v6

    goto :goto_c

    :cond_14
    move v6, v4

    goto :goto_d

    :cond_15
    move v6, v7

    goto/16 :goto_5

    :cond_16
    move v8, v2

    move v6, v7

    move-object v3, v4

    move v13, v5

    move v5, v0

    move v0, v13

    goto/16 :goto_6

    :cond_17
    move v7, v2

    move v9, v5

    move v5, v0

    move v0, v4

    move-object v4, v3

    goto/16 :goto_3

    :cond_18
    move v0, v2

    goto/16 :goto_0
.end method


# virtual methods
.method protected final _closeInput()V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_reader:Ljava/io/Reader;

    if-eqz v0, :cond_2

    .line 155
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_ioContext:Lorg/codehaus/jackson/io/IOContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/io/IOContext;->isResourceManaged()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/codehaus/jackson/JsonParser$Feature;->AUTO_CLOSE_SOURCE:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->isEnabled(Lorg/codehaus/jackson/JsonParser$Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_reader:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 158
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_reader:Ljava/io/Reader;

    .line 160
    :cond_2
    return-void
.end method

.method protected final _decodeBase64(Lorg/codehaus/jackson/Base64Variant;)[B
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x3

    const/16 v6, 0x22

    const/4 v5, -0x2

    .line 1680
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_getByteArrayBuilder()Lorg/codehaus/jackson/util/ByteArrayBuilder;

    move-result-object v2

    .line 1687
    :cond_0
    :goto_0
    iget v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    iget v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    if-lt v0, v1, :cond_1

    .line 1688
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->loadMoreGuaranteed()V

    .line 1690
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    aget-char v1, v0, v1

    .line 1691
    const/16 v0, 0x20

    if-le v1, v0, :cond_0

    .line 1692
    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/Base64Variant;->decodeBase64Char(C)I

    move-result v0

    .line 1693
    if-gez v0, :cond_3

    .line 1694
    if-ne v1, v6, :cond_2

    .line 1695
    invoke-virtual {v2}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->toByteArray()[B

    move-result-object v0

    .line 1764
    :goto_1
    return-object v0

    .line 1697
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_decodeBase64Escape(Lorg/codehaus/jackson/Base64Variant;CI)I

    move-result v0

    .line 1698
    if-ltz v0, :cond_0

    .line 1706
    :cond_3
    iget v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    iget v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    if-lt v1, v3, :cond_4

    .line 1707
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->loadMoreGuaranteed()V

    .line 1709
    :cond_4
    iget-object v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    aget-char v3, v1, v3

    .line 1710
    invoke-virtual {p1, v3}, Lorg/codehaus/jackson/Base64Variant;->decodeBase64Char(C)I

    move-result v1

    .line 1711
    if-gez v1, :cond_5

    .line 1712
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v3, v1}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_decodeBase64Escape(Lorg/codehaus/jackson/Base64Variant;CI)I

    move-result v1

    .line 1714
    :cond_5
    shl-int/lit8 v0, v0, 0x6

    or-int/2addr v1, v0

    .line 1717
    iget v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    iget v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    if-lt v0, v3, :cond_6

    .line 1718
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->loadMoreGuaranteed()V

    .line 1720
    :cond_6
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    aget-char v3, v0, v3

    .line 1721
    invoke-virtual {p1, v3}, Lorg/codehaus/jackson/Base64Variant;->decodeBase64Char(C)I

    move-result v0

    .line 1724
    if-gez v0, :cond_b

    .line 1725
    if-eq v0, v5, :cond_8

    .line 1727
    if-ne v3, v6, :cond_7

    invoke-virtual {p1}, Lorg/codehaus/jackson/Base64Variant;->usesPadding()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1728
    shr-int/lit8 v0, v1, 0x4

    .line 1729
    invoke-virtual {v2, v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->append(I)V

    .line 1730
    invoke-virtual {v2}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->toByteArray()[B

    move-result-object v0

    goto :goto_1

    .line 1732
    :cond_7
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v3, v0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_decodeBase64Escape(Lorg/codehaus/jackson/Base64Variant;CI)I

    move-result v0

    .line 1734
    :cond_8
    if-ne v0, v5, :cond_b

    .line 1736
    iget v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    iget v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    if-lt v0, v3, :cond_9

    .line 1737
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->loadMoreGuaranteed()V

    .line 1739
    :cond_9
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    aget-char v0, v0, v3

    .line 1740
    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/Base64Variant;->usesPaddingChar(C)Z

    move-result v3

    if-nez v3, :cond_a

    .line 1741
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "expected padding character \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/codehaus/jackson/Base64Variant;->getPaddingChar()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v7, v1}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->reportInvalidBase64Char(Lorg/codehaus/jackson/Base64Variant;IILjava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 1744
    :cond_a
    shr-int/lit8 v0, v1, 0x4

    .line 1745
    invoke-virtual {v2, v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->append(I)V

    goto/16 :goto_0

    .line 1751
    :cond_b
    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v1, v0

    .line 1753
    iget v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    iget v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    if-lt v0, v3, :cond_c

    .line 1754
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->loadMoreGuaranteed()V

    .line 1756
    :cond_c
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    aget-char v3, v0, v3

    .line 1757
    invoke-virtual {p1, v3}, Lorg/codehaus/jackson/Base64Variant;->decodeBase64Char(C)I

    move-result v0

    .line 1758
    if-gez v0, :cond_f

    .line 1759
    if-eq v0, v5, :cond_e

    .line 1761
    if-ne v3, v6, :cond_d

    invoke-virtual {p1}, Lorg/codehaus/jackson/Base64Variant;->usesPadding()Z

    move-result v0

    if-nez v0, :cond_d

    .line 1762
    shr-int/lit8 v0, v1, 0x2

    .line 1763
    invoke-virtual {v2, v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->appendTwoBytes(I)V

    .line 1764
    invoke-virtual {v2}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->toByteArray()[B

    move-result-object v0

    goto/16 :goto_1

    .line 1766
    :cond_d
    invoke-virtual {p0, p1, v3, v7}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_decodeBase64Escape(Lorg/codehaus/jackson/Base64Variant;CI)I

    move-result v0

    .line 1768
    :cond_e
    if-ne v0, v5, :cond_f

    .line 1774
    shr-int/lit8 v0, v1, 0x2

    .line 1775
    invoke-virtual {v2, v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->appendTwoBytes(I)V

    goto/16 :goto_0

    .line 1781
    :cond_f
    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v0, v1

    .line 1782
    invoke-virtual {v2, v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->appendThreeBytes(I)V

    goto/16 :goto_0
.end method

.method protected final _decodeEscaped()C
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1576
    iget v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    if-lt v0, v2, :cond_0

    .line 1577
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->loadMore()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1578
    const-string/jumbo v0, " in character escape sequence"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 1581
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    aget-char v0, v0, v2

    .line 1583
    sparse-switch v0, :sswitch_data_0

    .line 1606
    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_handleUnrecognizedCharacterEscape(C)C

    move-result v0

    .line 1624
    :goto_0
    :sswitch_0
    return v0

    .line 1586
    :sswitch_1
    const/16 v0, 0x8

    goto :goto_0

    .line 1588
    :sswitch_2
    const/16 v0, 0x9

    goto :goto_0

    .line 1590
    :sswitch_3
    const/16 v0, 0xa

    goto :goto_0

    .line 1592
    :sswitch_4
    const/16 v0, 0xc

    goto :goto_0

    .line 1594
    :sswitch_5
    const/16 v0, 0xd

    goto :goto_0

    :sswitch_6
    move v0, v1

    .line 1611
    :goto_1
    const/4 v2, 0x4

    if-ge v0, v2, :cond_3

    .line 1612
    iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    iget v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    if-lt v2, v3, :cond_1

    .line 1613
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->loadMore()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1614
    const-string/jumbo v2, " in character escape sequence"

    invoke-virtual {p0, v2}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 1617
    :cond_1
    iget-object v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    aget-char v2, v2, v3

    .line 1618
    invoke-static {v2}, Lorg/codehaus/jackson/util/CharTypes;->charToHex(I)I

    move-result v3

    .line 1619
    if-gez v3, :cond_2

    .line 1620
    const-string/jumbo v4, "expected a hex-digit for character escape sequence"

    invoke-virtual {p0, v2, v4}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 1622
    :cond_2
    shl-int/lit8 v1, v1, 0x4

    or-int/2addr v1, v3

    .line 1611
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1624
    :cond_3
    int-to-char v0, v1

    goto :goto_0

    .line 1583
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x2f -> :sswitch_0
        0x5c -> :sswitch_0
        0x62 -> :sswitch_1
        0x66 -> :sswitch_4
        0x6e -> :sswitch_3
        0x72 -> :sswitch_5
        0x74 -> :sswitch_2
        0x75 -> :sswitch_6
    .end sparse-switch
.end method

.method protected final _finishString()V
    .locals 6

    .prologue
    .line 1303
    iget v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 1304
    iget v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    .line 1306
    if-ge v0, v1, :cond_2

    .line 1307
    invoke-static {}, Lorg/codehaus/jackson/util/CharTypes;->getInputCodeLatin1()[I

    move-result-object v2

    .line 1308
    array-length v3, v2

    .line 1311
    :cond_0
    iget-object v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    aget-char v4, v4, v0

    .line 1312
    if-ge v4, v3, :cond_1

    aget v5, v2, v4

    if-eqz v5, :cond_1

    .line 1313
    const/16 v1, 0x22

    if-ne v4, v1, :cond_2

    .line 1314
    iget-object v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    iget-object v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    iget v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    sub-int v4, v0, v4

    invoke-virtual {v1, v2, v3, v4}, Lorg/codehaus/jackson/util/TextBuffer;->resetWithShared([CII)V

    .line 1315
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 1331
    :goto_0
    return-void

    .line 1321
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 1322
    if-lt v0, v1, :cond_0

    .line 1328
    :cond_2
    iget-object v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    iget-object v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    iget v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    sub-int v4, v0, v4

    invoke-virtual {v1, v2, v3, v4}, Lorg/codehaus/jackson/util/TextBuffer;->resetWithCopy([CII)V

    .line 1329
    iput v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 1330
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_finishString2()V

    goto :goto_0
.end method

.method protected final _finishString2()V
    .locals 7

    .prologue
    const/16 v6, 0x5c

    const/16 v5, 0x22

    .line 1336
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/TextBuffer;->getCurrentSegment()[C

    move-result-object v1

    .line 1337
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/TextBuffer;->getCurrentSegmentSize()I

    move-result v0

    .line 1340
    :goto_0
    iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    iget v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    if-lt v2, v3, :cond_0

    .line 1341
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->loadMore()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1342
    const-string/jumbo v2, ": was expecting closing quote for a string value"

    invoke-virtual {p0, v2}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 1345
    :cond_0
    iget-object v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    aget-char v2, v2, v3

    .line 1347
    if-gt v2, v6, :cond_1

    .line 1348
    if-ne v2, v6, :cond_2

    .line 1353
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_decodeEscaped()C

    move-result v2

    .line 1364
    :cond_1
    :goto_1
    array-length v3, v1

    if-lt v0, v3, :cond_4

    .line 1365
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v1

    .line 1366
    const/4 v0, 0x0

    move v3, v0

    .line 1369
    :goto_2
    add-int/lit8 v0, v3, 0x1

    aput-char v2, v1, v3

    goto :goto_0

    .line 1354
    :cond_2
    if-gt v2, v5, :cond_1

    .line 1355
    if-eq v2, v5, :cond_3

    .line 1356
    const/16 v3, 0x20

    if-ge v2, v3, :cond_1

    .line 1359
    const-string/jumbo v3, "string value"

    invoke-virtual {p0, v2, v3}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_throwUnquotedSpace(ILjava/lang/String;)V

    goto :goto_1

    .line 1371
    :cond_3
    iget-object v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/util/TextBuffer;->setCurrentLength(I)V

    .line 1372
    return-void

    :cond_4
    move v3, v0

    goto :goto_2
.end method

.method protected final _getText2(Lorg/codehaus/jackson/JsonToken;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 209
    if-nez p1, :cond_0

    .line 210
    const/4 v0, 0x0

    .line 222
    :goto_0
    return-object v0

    .line 212
    :cond_0
    sget-object v0, Lorg/codehaus/jackson/impl/ReaderBasedParser$1;->$SwitchMap$org$codehaus$jackson$JsonToken:[I

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 222
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonToken;->asString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 214
    :pswitch_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonReadContext;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 220
    :pswitch_1
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 212
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected final _handleApostropheValue()Lorg/codehaus/jackson/JsonToken;
    .locals 7

    .prologue
    const/16 v6, 0x5c

    const/16 v5, 0x27

    .line 1208
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v1

    .line 1209
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/TextBuffer;->getCurrentSegmentSize()I

    move-result v0

    .line 1212
    :goto_0
    iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    iget v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    if-lt v2, v3, :cond_0

    .line 1213
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->loadMore()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1214
    const-string/jumbo v2, ": was expecting closing quote for a string value"

    invoke-virtual {p0, v2}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 1217
    :cond_0
    iget-object v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    aget-char v2, v2, v3

    .line 1219
    if-gt v2, v6, :cond_1

    .line 1220
    if-ne v2, v6, :cond_2

    .line 1225
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_decodeEscaped()C

    move-result v2

    .line 1236
    :cond_1
    :goto_1
    array-length v3, v1

    if-lt v0, v3, :cond_4

    .line 1237
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v1

    .line 1238
    const/4 v0, 0x0

    move v3, v0

    .line 1241
    :goto_2
    add-int/lit8 v0, v3, 0x1

    aput-char v2, v1, v3

    goto :goto_0

    .line 1226
    :cond_2
    if-gt v2, v5, :cond_1

    .line 1227
    if-eq v2, v5, :cond_3

    .line 1228
    const/16 v3, 0x20

    if-ge v2, v3, :cond_1

    .line 1231
    const-string/jumbo v3, "string value"

    invoke-virtual {p0, v2, v3}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_throwUnquotedSpace(ILjava/lang/String;)V

    goto :goto_1

    .line 1243
    :cond_3
    iget-object v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/util/TextBuffer;->setCurrentLength(I)V

    .line 1244
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    return-object v0

    :cond_4
    move v3, v0

    goto :goto_2
.end method

.method protected final _handleInvalidNumberStart(IZ)Lorg/codehaus/jackson/JsonToken;
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x3

    const-wide/high16 v3, 0x7ff0

    const-wide/high16 v1, -0x10

    .line 940
    const/16 v0, 0x49

    if-ne p1, v0, :cond_4

    .line 941
    iget v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    iget v5, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    if-lt v0, v5, :cond_0

    .line 942
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->loadMore()Z

    move-result v0

    if-nez v0, :cond_0

    .line 943
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_reportInvalidEOFInValue()V

    .line 946
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v5, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    aget-char p1, v0, v5

    .line 947
    const/16 v0, 0x4e

    if-ne p1, v0, :cond_5

    .line 948
    if-eqz p2, :cond_1

    const-string/jumbo v0, "-INF"

    .line 949
    :goto_0
    invoke-virtual {p0, v0, v7}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_matchToken(Ljava/lang/String;I)V

    .line 950
    sget-object v5, Lorg/codehaus/jackson/JsonParser$Feature;->ALLOW_NON_NUMERIC_NUMBERS:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v5}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->isEnabled(Lorg/codehaus/jackson/JsonParser$Feature;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 951
    if-eqz p2, :cond_2

    :goto_1
    invoke-virtual {p0, v0, v1, v2}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->resetAsNaN(Ljava/lang/String;D)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 964
    :goto_2
    return-object v0

    .line 948
    :cond_1
    const-string/jumbo v0, "+INF"

    goto :goto_0

    :cond_2
    move-wide v1, v3

    .line 951
    goto :goto_1

    .line 953
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Non-standard token \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_reportError(Ljava/lang/String;)V

    .line 963
    :cond_4
    :goto_3
    const-string/jumbo v0, "expected digit (0-9) to follow minus sign, for valid numeric value"

    invoke-virtual {p0, p1, v0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->reportUnexpectedNumberChar(ILjava/lang/String;)V

    .line 964
    const/4 v0, 0x0

    goto :goto_2

    .line 954
    :cond_5
    const/16 v0, 0x6e

    if-ne p1, v0, :cond_4

    .line 955
    if-eqz p2, :cond_6

    const-string/jumbo v0, "-Infinity"

    .line 956
    :goto_4
    invoke-virtual {p0, v0, v7}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_matchToken(Ljava/lang/String;I)V

    .line 957
    sget-object v5, Lorg/codehaus/jackson/JsonParser$Feature;->ALLOW_NON_NUMERIC_NUMBERS:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v5}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->isEnabled(Lorg/codehaus/jackson/JsonParser$Feature;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 958
    if-eqz p2, :cond_7

    :goto_5
    invoke-virtual {p0, v0, v1, v2}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->resetAsNaN(Ljava/lang/String;D)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_2

    .line 955
    :cond_6
    const-string/jumbo v0, "+Infinity"

    goto :goto_4

    :cond_7
    move-wide v1, v3

    .line 958
    goto :goto_5

    .line 960
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Non-standard token \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_reportError(Ljava/lang/String;)V

    goto :goto_3
.end method

.method protected final _handleUnexpectedValue(I)Lorg/codehaus/jackson/JsonToken;
    .locals 3
    .parameter

    .prologue
    .line 1170
    sparse-switch p1, :sswitch_data_0

    .line 1198
    :cond_0
    :goto_0
    const-string/jumbo v0, "expected a valid value (number, String, array, object, \'true\', \'false\' or \'null\')"

    invoke-virtual {p0, p1, v0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 1199
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 1179
    :sswitch_0
    sget-object v0, Lorg/codehaus/jackson/JsonParser$Feature;->ALLOW_SINGLE_QUOTES:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->isEnabled(Lorg/codehaus/jackson/JsonParser$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1180
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_handleApostropheValue()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_1

    .line 1184
    :sswitch_1
    const-string/jumbo v0, "NaN"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_matchToken(Ljava/lang/String;I)V

    .line 1185
    sget-object v0, Lorg/codehaus/jackson/JsonParser$Feature;->ALLOW_NON_NUMERIC_NUMBERS:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->isEnabled(Lorg/codehaus/jackson/JsonParser$Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1186
    const-string/jumbo v0, "NaN"

    const-wide/high16 v1, 0x7ff8

    invoke-virtual {p0, v0, v1, v2}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->resetAsNaN(Ljava/lang/String;D)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_1

    .line 1188
    :cond_1
    const-string/jumbo v0, "Non-standard token \'NaN\': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_reportError(Ljava/lang/String;)V

    goto :goto_0

    .line 1191
    :sswitch_2
    iget v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    iget v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    if-lt v0, v1, :cond_2

    .line 1192
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->loadMore()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1193
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_reportInvalidEOFInValue()V

    .line 1196
    :cond_2
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    aget-char v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_handleInvalidNumberStart(IZ)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_1

    .line 1170
    nop

    :sswitch_data_0
    .sparse-switch
        0x27 -> :sswitch_0
        0x2b -> :sswitch_2
        0x4e -> :sswitch_1
    .end sparse-switch
.end method

.method protected final _handleUnusualFieldName(I)Ljava/lang/String;
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1079
    const/16 v0, 0x27

    if-ne p1, v0, :cond_0

    sget-object v0, Lorg/codehaus/jackson/JsonParser$Feature;->ALLOW_SINGLE_QUOTES:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->isEnabled(Lorg/codehaus/jackson/JsonParser$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1080
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_parseApostropheFieldName()Ljava/lang/String;

    move-result-object v0

    .line 1124
    :goto_0
    return-object v0

    .line 1083
    :cond_0
    sget-object v0, Lorg/codehaus/jackson/JsonParser$Feature;->ALLOW_UNQUOTED_FIELD_NAMES:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->isEnabled(Lorg/codehaus/jackson/JsonParser$Feature;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1084
    const-string/jumbo v0, "was expecting double-quote to start field name"

    invoke-virtual {p0, p1, v0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 1086
    :cond_1
    invoke-static {}, Lorg/codehaus/jackson/util/CharTypes;->getInputCodeLatin1JsNames()[I

    move-result-object v2

    .line 1087
    array-length v3, v2

    .line 1092
    if-ge p1, v3, :cond_6

    .line 1093
    aget v0, v2, p1

    if-nez v0, :cond_5

    const/16 v0, 0x30

    if-lt p1, v0, :cond_2

    const/16 v0, 0x39

    if-le p1, v0, :cond_5

    :cond_2
    const/4 v0, 0x1

    .line 1097
    :goto_1
    if-nez v0, :cond_3

    .line 1098
    const-string/jumbo v0, "was expecting either valid name character (for unquoted name) or double-quote (for quoted) to start field name"

    invoke-virtual {p0, p1, v0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 1100
    :cond_3
    iget v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 1102
    iget v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    .line 1104
    if-ge v0, v4, :cond_9

    .line 1106
    :cond_4
    iget-object v5, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    aget-char v5, v5, v0

    .line 1107
    if-ge v5, v3, :cond_7

    .line 1108
    aget v6, v2, v5

    if-eqz v6, :cond_8

    .line 1109
    iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    add-int/lit8 v2, v2, -0x1

    .line 1110
    iput v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 1111
    iget-object v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_symbols:Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;

    iget-object v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    sub-int/2addr v0, v2

    invoke-virtual {v3, v4, v2, v0, v1}, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->findSymbol([CIII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    move v0, v1

    .line 1093
    goto :goto_1

    .line 1095
    :cond_6
    int-to-char v0, p1

    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v0

    goto :goto_1

    .line 1113
    :cond_7
    int-to-char v6, v5

    invoke-static {v6}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v6

    if-nez v6, :cond_8

    .line 1114
    iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    add-int/lit8 v2, v2, -0x1

    .line 1115
    iput v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 1116
    iget-object v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_symbols:Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;

    iget-object v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    sub-int/2addr v0, v2

    invoke-virtual {v3, v4, v2, v0, v1}, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->findSymbol([CIII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1118
    :cond_8
    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v5

    .line 1119
    add-int/lit8 v0, v0, 0x1

    .line 1120
    if-lt v0, v4, :cond_4

    .line 1122
    :cond_9
    iget v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    add-int/lit8 v3, v3, -0x1

    .line 1123
    iput v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 1124
    invoke-direct {p0, v3, v1, v2}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_parseUnusualFieldName2(II[I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected final _matchToken(Ljava/lang/String;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1635
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1638
    :cond_0
    iget v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    if-lt v1, v2, :cond_1

    .line 1639
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->loadMore()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1640
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_reportInvalidEOFInValue()V

    .line 1643
    :cond_1
    iget-object v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    aget-char v1, v1, v2

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v1, v2, :cond_2

    .line 1644
    invoke-virtual {p1, v3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\'null\', \'true\', \'false\' or NaN"

    invoke-virtual {p0, v1, v2}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_reportInvalidToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 1646
    :cond_2
    iget v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 1647
    add-int/lit8 p2, p2, 0x1

    if-lt p2, v0, :cond_0

    .line 1650
    iget v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    iget v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    if-lt v0, v1, :cond_4

    .line 1651
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->loadMore()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1664
    :cond_3
    :goto_0
    return-void

    .line 1655
    :cond_4
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    aget-char v0, v0, v1

    .line 1656
    const/16 v1, 0x30

    if-lt v0, v1, :cond_3

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_3

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_3

    .line 1660
    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1661
    iget v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 1662
    invoke-virtual {p1, v3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "\'null\', \'true\', \'false\' or NaN"

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_reportInvalidToken(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected final _parseApostropheFieldName()Ljava/lang/String;
    .locals 8

    .prologue
    const/16 v7, 0x27

    .line 1131
    iget v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 1132
    const/4 v0, 0x0

    .line 1133
    iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    .line 1135
    if-ge v1, v2, :cond_3

    .line 1136
    invoke-static {}, Lorg/codehaus/jackson/util/CharTypes;->getInputCodeLatin1()[I

    move-result-object v3

    .line 1137
    array-length v4, v3

    .line 1140
    :cond_0
    iget-object v5, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    aget-char v5, v5, v1

    .line 1141
    if-ne v5, v7, :cond_1

    .line 1142
    iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 1143
    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 1144
    iget-object v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_symbols:Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;

    iget-object v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    sub-int/2addr v1, v2

    invoke-virtual {v3, v4, v2, v1, v0}, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->findSymbol([CIII)Ljava/lang/String;

    move-result-object v0

    .line 1157
    :goto_0
    return-object v0

    .line 1146
    :cond_1
    if-ge v5, v4, :cond_2

    aget v6, v3, v5

    if-nez v6, :cond_3

    .line 1147
    :cond_2
    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v5

    .line 1150
    add-int/lit8 v1, v1, 0x1

    .line 1151
    if-lt v1, v2, :cond_0

    .line 1154
    :cond_3
    iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 1155
    iput v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 1157
    invoke-direct {p0, v2, v0, v7}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_parseFieldName2(III)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected final _parseFieldName(I)Ljava/lang/String;
    .locals 8
    .parameter

    .prologue
    const/16 v7, 0x22

    .line 976
    if-eq p1, v7, :cond_0

    .line 977
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_handleUnusualFieldName(I)Ljava/lang/String;

    move-result-object v0

    .line 1008
    :goto_0
    return-object v0

    .line 983
    :cond_0
    iget v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 984
    const/4 v0, 0x0

    .line 985
    iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    .line 987
    if-ge v1, v2, :cond_3

    .line 988
    invoke-static {}, Lorg/codehaus/jackson/util/CharTypes;->getInputCodeLatin1()[I

    move-result-object v3

    .line 989
    array-length v4, v3

    .line 992
    :cond_1
    iget-object v5, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    aget-char v5, v5, v1

    .line 993
    if-ge v5, v4, :cond_2

    aget v6, v3, v5

    if-eqz v6, :cond_2

    .line 994
    if-ne v5, v7, :cond_3

    .line 995
    iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 996
    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 997
    iget-object v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_symbols:Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;

    iget-object v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    sub-int/2addr v1, v2

    invoke-virtual {v3, v4, v2, v1, v0}, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->findSymbol([CIII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1001
    :cond_2
    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v5

    .line 1002
    add-int/lit8 v1, v1, 0x1

    .line 1003
    if-lt v1, v2, :cond_1

    .line 1006
    :cond_3
    iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 1007
    iput v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 1008
    invoke-direct {p0, v2, v0, v7}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_parseFieldName2(III)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected final _releaseBuffers()V
    .locals 2

    .prologue
    .line 172
    invoke-super {p0}, Lorg/codehaus/jackson/impl/JsonParserBase;->_releaseBuffers()V

    .line 173
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    .line 174
    if-eqz v0, :cond_0

    .line 175
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    .line 176
    iget-object v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_ioContext:Lorg/codehaus/jackson/io/IOContext;

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/io/IOContext;->releaseTokenBuffer([C)V

    .line 178
    :cond_0
    return-void
.end method

.method protected final _reportInvalidToken(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1795
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1801
    :goto_0
    iget v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    if-lt v1, v2, :cond_0

    .line 1802
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->loadMore()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1803
    :cond_0
    iget-object v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    aget-char v1, v1, v2

    .line 1807
    invoke-static {v1}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1808
    iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 1811
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1813
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unrecognized token \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\': was expecting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_reportError(Ljava/lang/String;)V

    .line 1814
    return-void
.end method

.method protected final _skipCR()V
    .locals 2

    .prologue
    .line 1435
    iget v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    iget v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->loadMore()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1436
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    aget-char v0, v0, v1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 1437
    iget v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 1440
    :cond_1
    iget v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_currInputRow:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_currInputRow:I

    .line 1441
    iget v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    iput v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_currInputRowStart:I

    .line 1442
    return-void
.end method

.method protected final _skipLF()V
    .locals 1

    .prologue
    .line 1446
    iget v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_currInputRow:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_currInputRow:I

    .line 1447
    iget v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    iput v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_currInputRowStart:I

    .line 1448
    return-void
.end method

.method protected final _skipString()V
    .locals 7

    .prologue
    const/16 v6, 0x5c

    const/16 v5, 0x22

    .line 1382
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_tokenIncomplete:Z

    .line 1384
    iget v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 1385
    iget v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    .line 1386
    iget-object v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    .line 1389
    :goto_0
    if-lt v1, v0, :cond_1

    .line 1390
    iput v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 1391
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->loadMore()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1392
    const-string/jumbo v0, ": was expecting closing quote for a string value"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 1394
    :cond_0
    iget v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 1395
    iget v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    .line 1397
    :cond_1
    add-int/lit8 v2, v1, 0x1

    aget-char v1, v3, v1

    .line 1399
    if-gt v1, v6, :cond_4

    .line 1400
    if-ne v1, v6, :cond_2

    .line 1405
    iput v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 1406
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_decodeEscaped()C

    .line 1407
    iget v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 1408
    iget v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    goto :goto_0

    .line 1409
    :cond_2
    if-gt v1, v5, :cond_4

    .line 1410
    if-ne v1, v5, :cond_3

    .line 1411
    iput v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 1412
    return-void

    .line 1414
    :cond_3
    const/16 v4, 0x20

    if-ge v1, v4, :cond_4

    .line 1415
    iput v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 1416
    const-string/jumbo v4, "string value"

    invoke-virtual {p0, v1, v4}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_throwUnquotedSpace(ILjava/lang/String;)V

    :cond_4
    move v1, v2

    .line 1420
    goto :goto_0
.end method

.method public final close()V
    .locals 1

    .prologue
    .line 628
    invoke-super {p0}, Lorg/codehaus/jackson/impl/JsonParserBase;->close()V

    .line 629
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_symbols:Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;

    invoke-virtual {v0}, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->release()V

    .line 630
    return-void
.end method

.method public final getBinaryValue(Lorg/codehaus/jackson/Base64Variant;)[B
    .locals 3
    .parameter

    .prologue
    .line 315
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->VALUE_EMBEDDED_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_binaryValue:[B

    if-nez v0, :cond_1

    .line 317
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Current token ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ") not VALUE_STRING or VALUE_EMBEDDED_OBJECT, can not access as binary"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_reportError(Ljava/lang/String;)V

    .line 322
    :cond_1
    iget-boolean v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_tokenIncomplete:Z

    if-eqz v0, :cond_3

    .line 324
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_decodeBase64(Lorg/codehaus/jackson/Base64Variant;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_binaryValue:[B
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_tokenIncomplete:Z

    .line 339
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_binaryValue:[B

    return-object v0

    .line 325
    :catch_0
    move-exception v0

    .line 326
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Failed to decode VALUE_STRING as base64 ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_constructError(Ljava/lang/String;)Lorg/codehaus/jackson/JsonParseException;

    move-result-object v0

    throw v0

    .line 333
    :cond_3
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_binaryValue:[B

    if-nez v0, :cond_2

    .line 334
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_getByteArrayBuilder()Lorg/codehaus/jackson/util/ByteArrayBuilder;

    move-result-object v0

    .line 335
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0, p1}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_decodeBase64(Ljava/lang/String;Lorg/codehaus/jackson/util/ByteArrayBuilder;Lorg/codehaus/jackson/Base64Variant;)V

    .line 336
    invoke-virtual {v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_binaryValue:[B

    goto :goto_0
.end method

.method public final getCodec()Lorg/codehaus/jackson/ObjectCodec;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_objectCodec:Lorg/codehaus/jackson/ObjectCodec;

    return-object v0
.end method

.method protected final getNextChar(Ljava/lang/String;)C
    .locals 3
    .parameter

    .prologue
    .line 136
    iget v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    iget v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    if-lt v0, v1, :cond_0

    .line 137
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->loadMore()Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 141
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    aget-char v0, v0, v1

    return v0
.end method

.method public final getText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    .line 197
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_1

    .line 198
    iget-boolean v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_tokenIncomplete:Z

    if-eqz v0, :cond_0

    .line 199
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_tokenIncomplete:Z

    .line 200
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_finishString()V

    .line 202
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v0

    .line 204
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_getText2(Lorg/codehaus/jackson/JsonToken;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final getTextCharacters()[C
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 229
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    if-eqz v0, :cond_4

    .line 230
    sget-object v0, Lorg/codehaus/jackson/impl/ReaderBasedParser$1;->$SwitchMap$org$codehaus$jackson$JsonToken:[I

    iget-object v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 257
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonToken;->asCharArray()[C

    move-result-object v0

    .line 260
    :goto_0
    return-object v0

    .line 233
    :pswitch_0
    iget-boolean v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_nameCopied:Z

    if-nez v0, :cond_1

    .line 234
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonReadContext;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    .line 235
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 236
    iget-object v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_nameCopyBuffer:[C

    if-nez v2, :cond_2

    .line 237
    iget-object v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_ioContext:Lorg/codehaus/jackson/io/IOContext;

    invoke-virtual {v2, v1}, Lorg/codehaus/jackson/io/IOContext;->allocNameCopyBuffer(I)[C

    move-result-object v2

    iput-object v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_nameCopyBuffer:[C

    .line 241
    :cond_0
    :goto_1
    iget-object v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_nameCopyBuffer:[C

    invoke-virtual {v0, v3, v1, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 242
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_nameCopied:Z

    .line 244
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_nameCopyBuffer:[C

    goto :goto_0

    .line 238
    :cond_2
    iget-object v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_nameCopyBuffer:[C

    array-length v2, v2

    if-ge v2, v1, :cond_0

    .line 239
    new-array v2, v1, [C

    iput-object v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_nameCopyBuffer:[C

    goto :goto_1

    .line 247
    :pswitch_1
    iget-boolean v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_tokenIncomplete:Z

    if-eqz v0, :cond_3

    .line 248
    iput-boolean v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_tokenIncomplete:Z

    .line 249
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_finishString()V

    .line 254
    :cond_3
    :pswitch_2
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/TextBuffer;->getTextBuffer()[C

    move-result-object v0

    goto :goto_0

    .line 260
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 230
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public final getTextLength()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 267
    iget-object v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    if-eqz v1, :cond_0

    .line 268
    sget-object v1, Lorg/codehaus/jackson/impl/ReaderBasedParser$1;->$SwitchMap$org$codehaus$jackson$JsonToken:[I

    iget-object v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {v2}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 283
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonToken;->asCharArray()[C

    move-result-object v0

    array-length v0, v0

    .line 286
    :cond_0
    :goto_0
    return v0

    .line 271
    :pswitch_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonReadContext;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0

    .line 273
    :pswitch_1
    iget-boolean v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_tokenIncomplete:Z

    if-eqz v1, :cond_1

    .line 274
    iput-boolean v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_tokenIncomplete:Z

    .line 275
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_finishString()V

    .line 280
    :cond_1
    :pswitch_2
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/TextBuffer;->size()I

    move-result v0

    goto :goto_0

    .line 268
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public final getTextOffset()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 293
    iget-object v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    if-eqz v1, :cond_0

    .line 294
    sget-object v1, Lorg/codehaus/jackson/impl/ReaderBasedParser$1;->$SwitchMap$org$codehaus$jackson$JsonToken:[I

    iget-object v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {v2}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 308
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 298
    :pswitch_1
    iget-boolean v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_tokenIncomplete:Z

    if-eqz v1, :cond_1

    .line 299
    iput-boolean v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_tokenIncomplete:Z

    .line 300
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_finishString()V

    .line 305
    :cond_1
    :pswitch_2
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/TextBuffer;->getTextOffset()I

    move-result v0

    goto :goto_0

    .line 294
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method protected final loadMore()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 113
    iget-wide v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_currInputProcessed:J

    iget v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_currInputProcessed:J

    .line 114
    iget v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_currInputRowStart:I

    iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_currInputRowStart:I

    .line 116
    iget-object v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_reader:Ljava/io/Reader;

    if-eqz v1, :cond_0

    .line 117
    iget-object v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_reader:Ljava/io/Reader;

    iget-object v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget-object v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    array-length v3, v3

    invoke-virtual {v1, v2, v0, v3}, Ljava/io/Reader;->read([CII)I

    move-result v1

    .line 118
    if-lez v1, :cond_1

    .line 119
    iput v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 120
    iput v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    .line 121
    const/4 v0, 0x1

    .line 130
    :cond_0
    return v0

    .line 124
    :cond_1
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_closeInput()V

    .line 126
    if-nez v1, :cond_0

    .line 127
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Reader returned 0 characters when trying to read "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final nextLongValue(J)J
    .locals 3
    .parameter

    .prologue
    .line 574
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_3

    .line 575
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_nameCopied:Z

    .line 576
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_nextToken:Lorg/codehaus/jackson/JsonToken;

    .line 577
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_nextToken:Lorg/codehaus/jackson/JsonToken;

    .line 578
    iput-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    .line 579
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_1

    .line 580
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->getLongValue()J

    move-result-wide p1

    .line 590
    :cond_0
    :goto_0
    return-wide p1

    .line 582
    :cond_1
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_2

    .line 583
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    iget v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_tokenInputRow:I

    iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_tokenInputCol:I

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/impl/JsonReadContext;->createChildArrayContext(II)Lorg/codehaus/jackson/impl/JsonReadContext;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    goto :goto_0

    .line 584
    :cond_2
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    .line 585
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    iget v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_tokenInputRow:I

    iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_tokenInputCol:I

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/impl/JsonReadContext;->createChildObjectContext(II)Lorg/codehaus/jackson/impl/JsonReadContext;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    goto :goto_0

    .line 590
    :cond_3
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->getLongValue()J

    move-result-wide p1

    goto :goto_0
.end method

.method public final nextTextValue()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 522
    iget-object v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    sget-object v2, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    if-ne v1, v2, :cond_4

    .line 523
    iput-boolean v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_nameCopied:Z

    .line 524
    iget-object v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_nextToken:Lorg/codehaus/jackson/JsonToken;

    .line 525
    iput-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_nextToken:Lorg/codehaus/jackson/JsonToken;

    .line 526
    iput-object v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    .line 527
    sget-object v2, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    if-ne v1, v2, :cond_2

    .line 528
    iget-boolean v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_tokenIncomplete:Z

    if-eqz v0, :cond_0

    .line 529
    iput-boolean v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_tokenIncomplete:Z

    .line 530
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_finishString()V

    .line 532
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v0

    .line 542
    :cond_1
    :goto_0
    return-object v0

    .line 534
    :cond_2
    sget-object v2, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-ne v1, v2, :cond_3

    .line 535
    iget-object v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_tokenInputRow:I

    iget v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_tokenInputCol:I

    invoke-virtual {v1, v2, v3}, Lorg/codehaus/jackson/impl/JsonReadContext;->createChildArrayContext(II)Lorg/codehaus/jackson/impl/JsonReadContext;

    move-result-object v1

    iput-object v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    goto :goto_0

    .line 536
    :cond_3
    sget-object v2, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v1, v2, :cond_1

    .line 537
    iget-object v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_tokenInputRow:I

    iget v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_tokenInputCol:I

    invoke-virtual {v1, v2, v3}, Lorg/codehaus/jackson/impl/JsonReadContext;->createChildObjectContext(II)Lorg/codehaus/jackson/impl/JsonReadContext;

    move-result-object v1

    iput-object v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    goto :goto_0

    .line 542
    :cond_4
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    sget-object v2, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final nextToken()Lorg/codehaus/jackson/JsonToken;
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/16 v8, 0x7d

    const/16 v7, 0x5d

    const/4 v6, 0x1

    .line 356
    const/4 v0, 0x0

    iput v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_numTypesValid:I

    .line 362
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    sget-object v2, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v2, :cond_0

    .line 363
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_nextAfterName()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 494
    :goto_0
    return-object v0

    .line 365
    :cond_0
    iget-boolean v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_tokenIncomplete:Z

    if-eqz v0, :cond_1

    .line 366
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_skipString()V

    .line 368
    :cond_1
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_skipWSOrEnd()I

    move-result v0

    .line 369
    if-gez v0, :cond_2

    .line 373
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->close()V

    .line 374
    iput-object v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    move-object v0, v1

    goto :goto_0

    .line 380
    :cond_2
    iget-wide v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_currInputProcessed:J

    iget v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_tokenInputTotal:J

    .line 381
    iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_currInputRow:I

    iput v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_tokenInputRow:I

    .line 382
    iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    iget v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_currInputRowStart:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_tokenInputCol:I

    .line 385
    iput-object v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_binaryValue:[B

    .line 388
    if-ne v0, v7, :cond_4

    .line 389
    iget-object v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v1}, Lorg/codehaus/jackson/impl/JsonReadContext;->inArray()Z

    move-result v1

    if-nez v1, :cond_3

    .line 390
    invoke-virtual {p0, v0, v8}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_reportMismatchedEndMarker(IC)V

    .line 392
    :cond_3
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonReadContext;->getParent()Lorg/codehaus/jackson/impl/JsonReadContext;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    .line 393
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->END_ARRAY:Lorg/codehaus/jackson/JsonToken;

    iput-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    goto :goto_0

    .line 395
    :cond_4
    if-ne v0, v8, :cond_6

    .line 396
    iget-object v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v1}, Lorg/codehaus/jackson/impl/JsonReadContext;->inObject()Z

    move-result v1

    if-nez v1, :cond_5

    .line 397
    invoke-virtual {p0, v0, v7}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_reportMismatchedEndMarker(IC)V

    .line 399
    :cond_5
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonReadContext;->getParent()Lorg/codehaus/jackson/impl/JsonReadContext;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    .line 400
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    iput-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    goto :goto_0

    .line 404
    :cond_6
    iget-object v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v1}, Lorg/codehaus/jackson/impl/JsonReadContext;->expectComma()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 405
    const/16 v1, 0x2c

    if-eq v0, v1, :cond_7

    .line 406
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "was expecting comma to separate "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v2}, Lorg/codehaus/jackson/impl/JsonReadContext;->getTypeDesc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " entries"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 408
    :cond_7
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_skipWS()I

    move-result v0

    .line 415
    :cond_8
    iget-object v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v1}, Lorg/codehaus/jackson/impl/JsonReadContext;->inObject()Z

    move-result v1

    .line 416
    if-eqz v1, :cond_a

    .line 418
    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_parseFieldName(I)Ljava/lang/String;

    move-result-object v0

    .line 419
    iget-object v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v2, v0}, Lorg/codehaus/jackson/impl/JsonReadContext;->setCurrentName(Ljava/lang/String;)V

    .line 420
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    iput-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    .line 421
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_skipWS()I

    move-result v0

    .line 422
    const/16 v2, 0x3a

    if-eq v0, v2, :cond_9

    .line 423
    const-string/jumbo v2, "was expecting a colon to separate field name and value"

    invoke-virtual {p0, v0, v2}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 425
    :cond_9
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_skipWS()I

    move-result v0

    .line 432
    :cond_a
    sparse-switch v0, :sswitch_data_0

    .line 485
    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_handleUnexpectedValue(I)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 489
    :goto_1
    if-eqz v1, :cond_d

    .line 490
    iput-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_nextToken:Lorg/codehaus/jackson/JsonToken;

    .line 491
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    goto/16 :goto_0

    .line 434
    :sswitch_0
    iput-boolean v6, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_tokenIncomplete:Z

    .line 435
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    goto :goto_1

    .line 438
    :sswitch_1
    if-nez v1, :cond_b

    .line 439
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_tokenInputRow:I

    iget v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_tokenInputCol:I

    invoke-virtual {v0, v2, v3}, Lorg/codehaus/jackson/impl/JsonReadContext;->createChildArrayContext(II)Lorg/codehaus/jackson/impl/JsonReadContext;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    .line 441
    :cond_b
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;

    goto :goto_1

    .line 444
    :sswitch_2
    if-nez v1, :cond_c

    .line 445
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_tokenInputRow:I

    iget v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_tokenInputCol:I

    invoke-virtual {v0, v2, v3}, Lorg/codehaus/jackson/impl/JsonReadContext;->createChildObjectContext(II)Lorg/codehaus/jackson/impl/JsonReadContext;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    .line 447
    :cond_c
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    goto :goto_1

    .line 453
    :sswitch_3
    const-string/jumbo v2, "expected a value"

    invoke-virtual {p0, v0, v2}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 455
    :sswitch_4
    const-string/jumbo v0, "true"

    invoke-virtual {p0, v0, v6}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_matchToken(Ljava/lang/String;I)V

    .line 456
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_TRUE:Lorg/codehaus/jackson/JsonToken;

    goto :goto_1

    .line 459
    :sswitch_5
    const-string/jumbo v0, "false"

    invoke-virtual {p0, v0, v6}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_matchToken(Ljava/lang/String;I)V

    .line 460
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_FALSE:Lorg/codehaus/jackson/JsonToken;

    goto :goto_1

    .line 463
    :sswitch_6
    const-string/jumbo v0, "null"

    invoke-virtual {p0, v0, v6}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_matchToken(Ljava/lang/String;I)V

    .line 464
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_NULL:Lorg/codehaus/jackson/JsonToken;

    goto :goto_1

    .line 482
    :sswitch_7
    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->parseNumberText(I)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_1

    .line 493
    :cond_d
    iput-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    goto/16 :goto_0

    .line 432
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x2d -> :sswitch_7
        0x30 -> :sswitch_7
        0x31 -> :sswitch_7
        0x32 -> :sswitch_7
        0x33 -> :sswitch_7
        0x34 -> :sswitch_7
        0x35 -> :sswitch_7
        0x36 -> :sswitch_7
        0x37 -> :sswitch_7
        0x38 -> :sswitch_7
        0x39 -> :sswitch_7
        0x5b -> :sswitch_1
        0x5d -> :sswitch_3
        0x66 -> :sswitch_5
        0x6e -> :sswitch_6
        0x74 -> :sswitch_4
        0x7b -> :sswitch_2
        0x7d -> :sswitch_3
    .end sparse-switch
.end method

.method protected final parseNumberText(I)Lorg/codehaus/jackson/JsonToken;
    .locals 13
    .parameter

    .prologue
    const/16 v11, 0x2d

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v10, 0x39

    const/16 v9, 0x30

    .line 662
    if-ne p1, v11, :cond_1

    move v0, v1

    .line 663
    :goto_0
    iget v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 664
    add-int/lit8 v5, v4, -0x1

    .line 665
    iget v7, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    .line 669
    if-eqz v0, :cond_2

    .line 670
    iget v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    if-ge v4, v3, :cond_b

    .line 671
    iget-object v6, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    add-int/lit8 v3, v4, 0x1

    aget-char p1, v6, v4

    .line 675
    if-gt p1, v10, :cond_0

    if-ge p1, v9, :cond_3

    .line 676
    :cond_0
    iput v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 677
    invoke-virtual {p0, p1, v1}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_handleInvalidNumberStart(IZ)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 767
    :goto_1
    return-object v0

    :cond_1
    move v0, v2

    .line 662
    goto :goto_0

    :cond_2
    move v3, v4

    .line 685
    :cond_3
    if-eq p1, v9, :cond_b

    .line 701
    :goto_2
    iget v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    if-ge v3, v4, :cond_b

    .line 702
    iget-object v6, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    add-int/lit8 v4, v3, 0x1

    aget-char v3, v6, v3

    .line 705
    if-lt v3, v9, :cond_4

    if-gt v3, v10, :cond_4

    .line 706
    add-int/lit8 v1, v1, 0x1

    move v3, v4

    goto :goto_2

    .line 714
    :cond_4
    const/16 v6, 0x2e

    if-ne v3, v6, :cond_e

    move v3, v2

    move v6, v4

    .line 717
    :goto_3
    if-ge v6, v7, :cond_b

    .line 718
    iget-object v8, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    add-int/lit8 v4, v6, 0x1

    aget-char v6, v8, v6

    .line 721
    if-lt v6, v9, :cond_5

    if-gt v6, v10, :cond_5

    .line 722
    add-int/lit8 v3, v3, 0x1

    move v6, v4

    goto :goto_3

    .line 727
    :cond_5
    if-nez v3, :cond_6

    .line 728
    const-string/jumbo v8, "Decimal point not followed by a digit"

    invoke-virtual {p0, v6, v8}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->reportUnexpectedNumberChar(ILjava/lang/String;)V

    :cond_6
    move v12, v3

    move v3, v4

    move v4, v6

    move v6, v12

    .line 733
    :goto_4
    const/16 v8, 0x65

    if-eq v4, v8, :cond_7

    const/16 v8, 0x45

    if-ne v4, v8, :cond_a

    .line 734
    :cond_7
    if-ge v3, v7, :cond_b

    .line 735
    iget-object v8, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    add-int/lit8 v4, v3, 0x1

    aget-char v3, v8, v3

    .line 739
    if-eq v3, v11, :cond_8

    const/16 v8, 0x2b

    if-ne v3, v8, :cond_d

    .line 740
    :cond_8
    if-ge v4, v7, :cond_b

    .line 741
    iget-object v8, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    add-int/lit8 v3, v4, 0x1

    aget-char v4, v8, v4

    .line 745
    :goto_5
    if-gt v4, v10, :cond_9

    if-lt v4, v9, :cond_9

    .line 746
    add-int/lit8 v2, v2, 0x1

    .line 747
    if-ge v3, v7, :cond_b

    .line 748
    iget-object v8, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    add-int/lit8 v4, v3, 0x1

    aget-char v3, v8, v3

    move v12, v4

    move v4, v3

    move v3, v12

    goto :goto_5

    .line 753
    :cond_9
    if-nez v2, :cond_a

    .line 754
    const-string/jumbo v7, "Exponent indicator not followed by a digit"

    invoke-virtual {p0, v4, v7}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->reportUnexpectedNumberChar(ILjava/lang/String;)V

    .line 759
    :cond_a
    add-int/lit8 v3, v3, -0x1

    .line 760
    iput v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 761
    sub-int/2addr v3, v5

    .line 762
    iget-object v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    iget-object v7, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    invoke-virtual {v4, v7, v5, v3}, Lorg/codehaus/jackson/util/TextBuffer;->resetWithShared([CII)V

    .line 763
    invoke-virtual {p0, v0, v1, v6, v2}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->reset(ZIII)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto/16 :goto_1

    .line 766
    :cond_b
    if-eqz v0, :cond_c

    add-int/lit8 v1, v5, 0x1

    :goto_6
    iput v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 767
    invoke-direct {p0, v0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->parseNumberText2(Z)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto/16 :goto_1

    :cond_c
    move v1, v5

    .line 766
    goto :goto_6

    :cond_d
    move v12, v4

    move v4, v3

    move v3, v12

    goto :goto_5

    :cond_e
    move v6, v2

    move v12, v4

    move v4, v3

    move v3, v12

    goto :goto_4
.end method

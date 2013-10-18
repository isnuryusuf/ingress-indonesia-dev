.class public Lcom/badlogic/gdx/utils/compression/lzma/Encoder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EMatchFinderTypeBT2:I = 0x0

.field public static final EMatchFinderTypeBT4:I = 0x1

.field static g_FastPos:[B = null

.field static final kDefaultDictionaryLogSize:I = 0x16

.field static final kIfinityPrice:I = 0xfffffff

.field static final kNumFastBytesDefault:I = 0x20

.field public static final kNumLenSpecSymbols:I = 0x10

.field static final kNumOpts:I = 0x1000

.field public static final kPropSize:I = 0x5


# instance fields
.field _additionalOffset:I

.field _alignPriceCount:I

.field _alignPrices:[I

.field _dictionarySize:I

.field _dictionarySizePrev:I

.field _distTableSize:I

.field _distancesPrices:[I

.field _finished:Z

.field _inStream:Ljava/io/InputStream;

.field _isMatch:[S

.field _isRep:[S

.field _isRep0Long:[S

.field _isRepG0:[S

.field _isRepG1:[S

.field _isRepG2:[S

.field _lenEncoder:Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenPriceTableEncoder;

.field _literalEncoder:Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder;

.field _longestMatchLength:I

.field _longestMatchWasFound:Z

.field _matchDistances:[I

.field _matchFinder:Lcom/badlogic/gdx/utils/compression/lz/BinTree;

.field _matchFinderType:I

.field _matchPriceCount:I

.field _needReleaseMFStream:Z

.field _numDistancePairs:I

.field _numFastBytes:I

.field _numFastBytesPrev:I

.field _numLiteralContextBits:I

.field _numLiteralPosStateBits:I

.field _optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

.field _optimumCurrentIndex:I

.field _optimumEndIndex:I

.field _posAlignEncoder:Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;

.field _posEncoders:[S

.field _posSlotEncoder:[Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;

.field _posSlotPrices:[I

.field _posStateBits:I

.field _posStateMask:I

.field _previousByte:B

.field _rangeEncoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;

.field _repDistances:[I

.field _repMatchLenEncoder:Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenPriceTableEncoder;

.field _state:I

.field _writeEndMark:Z

.field backRes:I

.field finished:[Z

.field nowPos64:J

.field processedInSize:[J

.field processedOutSize:[J

.field properties:[B

.field repLens:[I

.field reps:[I

.field tempPrices:[I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v0, 0x2

    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 35
    const/16 v2, 0x800

    new-array v2, v2, [B

    sput-object v2, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->g_FastPos:[B

    .line 41
    sget-object v2, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->g_FastPos:[B

    aput-byte v1, v2, v1

    .line 42
    sget-object v2, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->g_FastPos:[B

    aput-byte v7, v2, v7

    move v3, v0

    .line 43
    :goto_0
    const/16 v2, 0x16

    if-ge v3, v2, :cond_1

    .line 45
    shr-int/lit8 v2, v3, 0x1

    add-int/lit8 v2, v2, -0x1

    shl-int v4, v7, v2

    move v2, v0

    move v0, v1

    .line 46
    :goto_1
    if-ge v0, v4, :cond_0

    .line 47
    sget-object v5, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->g_FastPos:[B

    int-to-byte v6, v3

    aput-byte v6, v5, v2

    .line 46
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 43
    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v0, v2

    goto :goto_0

    .line 49
    :cond_1
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/16 v3, 0xc

    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v4, 0x4

    .line 399
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-static {}, Lcom/badlogic/gdx/utils/compression/lzma/Base;->StateInit()I

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_state:I

    .line 71
    new-array v1, v4, [I

    iput-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_repDistances:[I

    .line 319
    const/16 v1, 0x1000

    new-array v1, v1, [Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    iput-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    .line 320
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchFinder:Lcom/badlogic/gdx/utils/compression/lz/BinTree;

    .line 321
    new-instance v1, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;-><init>()V

    iput-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_rangeEncoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;

    .line 323
    const/16 v1, 0xc0

    new-array v1, v1, [S

    iput-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isMatch:[S

    .line 324
    new-array v1, v3, [S

    iput-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isRep:[S

    .line 325
    new-array v1, v3, [S

    iput-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isRepG0:[S

    .line 326
    new-array v1, v3, [S

    iput-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isRepG1:[S

    .line 327
    new-array v1, v3, [S

    iput-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isRepG2:[S

    .line 328
    const/16 v1, 0xc0

    new-array v1, v1, [S

    iput-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isRep0Long:[S

    .line 330
    new-array v1, v4, [Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;

    iput-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_posSlotEncoder:[Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;

    .line 332
    const/16 v1, 0x72

    new-array v1, v1, [S

    iput-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_posEncoders:[S

    .line 333
    new-instance v1, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;

    invoke-direct {v1, v4}, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;-><init>(I)V

    iput-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_posAlignEncoder:Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;

    .line 335
    new-instance v1, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenPriceTableEncoder;

    invoke-direct {v1, p0}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenPriceTableEncoder;-><init>(Lcom/badlogic/gdx/utils/compression/lzma/Encoder;)V

    iput-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_lenEncoder:Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenPriceTableEncoder;

    .line 336
    new-instance v1, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenPriceTableEncoder;

    invoke-direct {v1, p0}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenPriceTableEncoder;-><init>(Lcom/badlogic/gdx/utils/compression/lzma/Encoder;)V

    iput-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_repMatchLenEncoder:Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenPriceTableEncoder;

    .line 338
    new-instance v1, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder;

    invoke-direct {v1, p0}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder;-><init>(Lcom/badlogic/gdx/utils/compression/lzma/Encoder;)V

    iput-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_literalEncoder:Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder;

    .line 340
    const/16 v1, 0x224

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchDistances:[I

    .line 342
    const/16 v1, 0x20

    iput v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_numFastBytes:I

    .line 353
    const/16 v1, 0x100

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_posSlotPrices:[I

    .line 354
    const/16 v1, 0x200

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_distancesPrices:[I

    .line 355
    const/16 v1, 0x10

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_alignPrices:[I

    .line 358
    const/16 v1, 0x2c

    iput v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_distTableSize:I

    .line 360
    const/4 v1, 0x2

    iput v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_posStateBits:I

    .line 361
    const/4 v1, 0x3

    iput v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_posStateMask:I

    .line 362
    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_numLiteralPosStateBits:I

    .line 363
    const/4 v1, 0x3

    iput v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_numLiteralContextBits:I

    .line 365
    const/high16 v1, 0x40

    iput v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_dictionarySize:I

    .line 366
    iput v5, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_dictionarySizePrev:I

    .line 367
    iput v5, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_numFastBytesPrev:I

    .line 373
    iput v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchFinderType:I

    .line 374
    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_writeEndMark:Z

    .line 376
    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_needReleaseMFStream:Z

    .line 551
    new-array v1, v4, [I

    iput-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->reps:[I

    .line 552
    new-array v1, v4, [I

    iput-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->repLens:[I

    .line 1288
    new-array v1, v2, [J

    iput-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->processedInSize:[J

    new-array v1, v2, [J

    iput-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->processedOutSize:[J

    new-array v1, v2, [Z

    iput-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->finished:[Z

    .line 1317
    const/4 v1, 0x5

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->properties:[B

    .line 1327
    const/16 v1, 0x80

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->tempPrices:[I

    move v1, v0

    .line 400
    :goto_0
    const/16 v2, 0x1000

    if-ge v1, v2, :cond_0

    .line 401
    iget-object v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    new-instance v3, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    invoke-direct {v3, p0}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;-><init>(Lcom/badlogic/gdx/utils/compression/lzma/Encoder;)V

    aput-object v3, v2, v1

    .line 400
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 402
    :cond_0
    :goto_1
    if-ge v0, v4, :cond_1

    .line 403
    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_posSlotEncoder:[Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;

    new-instance v2, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;-><init>(I)V

    aput-object v2, v1, v0

    .line 402
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 404
    :cond_1
    return-void
.end method

.method static GetPosSlot(I)I
    .locals 2
    .parameter

    .prologue
    .line 53
    const/16 v0, 0x800

    if-ge p0, v0, :cond_0

    .line 54
    sget-object v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->g_FastPos:[B

    aget-byte v0, v0, p0

    .line 57
    :goto_0
    return v0

    .line 55
    :cond_0
    const/high16 v0, 0x20

    if-ge p0, v0, :cond_1

    .line 56
    sget-object v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->g_FastPos:[B

    shr-int/lit8 v1, p0, 0xa

    aget-byte v0, v0, v1

    add-int/lit8 v0, v0, 0x14

    goto :goto_0

    .line 57
    :cond_1
    sget-object v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->g_FastPos:[B

    shr-int/lit8 v1, p0, 0x14

    aget-byte v0, v0, v1

    add-int/lit8 v0, v0, 0x28

    goto :goto_0
.end method

.method static GetPosSlot2(I)I
    .locals 2
    .parameter

    .prologue
    .line 62
    const/high16 v0, 0x2

    if-ge p0, v0, :cond_0

    .line 63
    sget-object v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->g_FastPos:[B

    shr-int/lit8 v1, p0, 0x6

    aget-byte v0, v0, v1

    add-int/lit8 v0, v0, 0xc

    .line 66
    :goto_0
    return v0

    .line 64
    :cond_0
    const/high16 v0, 0x800

    if-ge p0, v0, :cond_1

    .line 65
    sget-object v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->g_FastPos:[B

    shr-int/lit8 v1, p0, 0x10

    aget-byte v0, v0, v1

    add-int/lit8 v0, v0, 0x20

    goto :goto_0

    .line 66
    :cond_1
    sget-object v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->g_FastPos:[B

    shr-int/lit8 v1, p0, 0x1a

    aget-byte v0, v0, v1

    add-int/lit8 v0, v0, 0x34

    goto :goto_0
.end method


# virtual methods
.method Backward(I)I
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 519
    iput p1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimumEndIndex:I

    .line 520
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    aget-object v0, v0, p1

    iget v1, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->PosPrev:I

    .line 521
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->BackPrev:I

    move v2, v1

    .line 524
    :goto_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    aget-object v1, v1, p1

    iget-boolean v1, v1, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Prev1IsChar:Z

    if-eqz v1, :cond_0

    .line 526
    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->MakeAsChar()V

    .line 527
    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    aget-object v1, v1, v2

    add-int/lit8 v3, v2, -0x1

    iput v3, v1, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->PosPrev:I

    .line 528
    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    aget-object v1, v1, p1

    iget-boolean v1, v1, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Prev2:Z

    if-eqz v1, :cond_0

    .line 530
    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    add-int/lit8 v3, v2, -0x1

    aget-object v1, v1, v3

    iput-boolean v5, v1, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Prev1IsChar:Z

    .line 531
    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    add-int/lit8 v3, v2, -0x1

    aget-object v1, v1, v3

    iget-object v3, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    aget-object v3, v3, p1

    iget v3, v3, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->PosPrev2:I

    iput v3, v1, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->PosPrev:I

    .line 532
    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    add-int/lit8 v3, v2, -0x1

    aget-object v1, v1, v3

    iget-object v3, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    aget-object v3, v3, p1

    iget v3, v3, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->BackPrev2:I

    iput v3, v1, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->BackPrev:I

    .line 538
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    aget-object v1, v1, v2

    iget v1, v1, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->BackPrev:I

    .line 539
    iget-object v3, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    aget-object v3, v3, v2

    iget v3, v3, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->PosPrev:I

    .line 541
    iget-object v4, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    aget-object v4, v4, v2

    iput v0, v4, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->BackPrev:I

    .line 542
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    aget-object v0, v0, v2

    iput p1, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->PosPrev:I

    .line 545
    if-gtz v2, :cond_1

    .line 546
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    aget-object v0, v0, v5

    iget v0, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->BackPrev:I

    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->backRes:I

    .line 547
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    aget-object v0, v0, v5

    iget v0, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->PosPrev:I

    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimumCurrentIndex:I

    .line 548
    iget v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimumCurrentIndex:I

    return v0

    :cond_1
    move v0, v1

    move p1, v2

    move v2, v3

    goto :goto_0
.end method

.method BaseInit()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-static {}, Lcom/badlogic/gdx/utils/compression/lzma/Base;->StateInit()I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_state:I

    .line 76
    iput-byte v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_previousByte:B

    move v0, v1

    .line 77
    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    .line 78
    iget-object v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_repDistances:[I

    aput v1, v2, v0

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 79
    :cond_0
    return-void
.end method

.method ChangePair(II)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1048
    const/high16 v0, 0x200

    if-ge p1, v0, :cond_0

    shl-int/lit8 v0, p1, 0x7

    if-lt p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Code(Ljava/io/InputStream;Ljava/io/OutputStream;JJLcom/badlogic/gdx/utils/compression/ICodeProgress;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1292
    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_needReleaseMFStream:Z

    .line 1295
    :try_start_0
    invoke-virtual/range {p0 .. p6}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->SetStreams(Ljava/io/InputStream;Ljava/io/OutputStream;JJ)V

    .line 1301
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->processedInSize:[J

    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->processedOutSize:[J

    iget-object v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->finished:[Z

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->CodeOneBlock([J[J[Z)V

    .line 1302
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->finished:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 1312
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->ReleaseStreams()V

    return-void

    .line 1304
    :cond_1
    if-eqz p7, :cond_0

    .line 1306
    :try_start_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->processedInSize:[J

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    iget-object v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->processedOutSize:[J

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    invoke-interface {p7, v0, v1, v2, v3}, Lcom/badlogic/gdx/utils/compression/ICodeProgress;->SetProgress(JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1312
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->ReleaseStreams()V

    throw v0
.end method

.method public CodeOneBlock([J[J[Z)V
    .locals 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v11, 0x4

    const-wide/16 v5, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1081
    aput-wide v5, p1, v9

    .line 1082
    aput-wide v5, p2, v9

    .line 1083
    aput-boolean v10, p3, v9

    .line 1085
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_inStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 1087
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchFinder:Lcom/badlogic/gdx/utils/compression/lz/BinTree;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_inStream:Ljava/io/InputStream;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->SetStream(Ljava/io/InputStream;)V

    .line 1088
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchFinder:Lcom/badlogic/gdx/utils/compression/lz/BinTree;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->Init()V

    .line 1089
    iput-boolean v10, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_needReleaseMFStream:Z

    .line 1090
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_inStream:Ljava/io/InputStream;

    .line 1093
    :cond_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_finished:Z

    if-eqz v0, :cond_1

    .line 1239
    :goto_0
    return-void

    .line 1095
    :cond_1
    iput-boolean v10, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_finished:Z

    .line 1098
    iget-wide v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->nowPos64:J

    .line 1099
    iget-wide v3, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->nowPos64:J

    cmp-long v0, v3, v5

    if-nez v0, :cond_3

    .line 1101
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchFinder:Lcom/badlogic/gdx/utils/compression/lz/BinTree;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->GetNumAvailableBytes()I

    move-result v0

    if-nez v0, :cond_2

    .line 1103
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->nowPos64:J

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->Flush(I)V

    goto :goto_0

    .line 1107
    :cond_2
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->ReadMatchDistances()I

    .line 1108
    iget-wide v3, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->nowPos64:J

    long-to-int v0, v3

    iget v3, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_posStateMask:I

    and-int/2addr v0, v3

    .line 1109
    iget-object v3, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_rangeEncoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;

    iget-object v4, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isMatch:[S

    iget v5, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_state:I

    shl-int/lit8 v5, v5, 0x4

    add-int/2addr v0, v5

    invoke-virtual {v3, v4, v0, v9}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->Encode([SII)V

    .line 1110
    iget v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_state:I

    invoke-static {v0}, Lcom/badlogic/gdx/utils/compression/lzma/Base;->StateUpdateChar(I)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_state:I

    .line 1111
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchFinder:Lcom/badlogic/gdx/utils/compression/lz/BinTree;

    iget v3, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_additionalOffset:I

    rsub-int/lit8 v3, v3, 0x0

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->GetIndexByte(I)B

    move-result v0

    .line 1112
    iget-object v3, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_literalEncoder:Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder;

    iget-wide v4, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->nowPos64:J

    long-to-int v4, v4

    iget-byte v5, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_previousByte:B

    invoke-virtual {v3, v4, v5}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder;->GetSubCoder(IB)Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder$Encoder2;

    move-result-object v3

    iget-object v4, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_rangeEncoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;

    invoke-virtual {v3, v4, v0}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder$Encoder2;->Encode(Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;B)V

    .line 1113
    iput-byte v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_previousByte:B

    .line 1114
    iget v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_additionalOffset:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_additionalOffset:I

    .line 1115
    iget-wide v3, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->nowPos64:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->nowPos64:J

    .line 1117
    :cond_3
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchFinder:Lcom/badlogic/gdx/utils/compression/lz/BinTree;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->GetNumAvailableBytes()I

    move-result v0

    if-nez v0, :cond_4

    .line 1119
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->nowPos64:J

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->Flush(I)V

    goto :goto_0

    .line 1125
    :cond_4
    iget-wide v3, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->nowPos64:J

    long-to-int v0, v3

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->GetOptimum(I)I

    move-result v3

    .line 1126
    iget v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->backRes:I

    .line 1127
    iget-wide v4, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->nowPos64:J

    long-to-int v4, v4

    iget v5, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_posStateMask:I

    and-int/2addr v4, v5

    .line 1128
    iget v5, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_state:I

    shl-int/lit8 v5, v5, 0x4

    add-int/2addr v5, v4

    .line 1129
    if-ne v3, v10, :cond_8

    const/4 v6, -0x1

    if-ne v0, v6, :cond_8

    .line 1131
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_rangeEncoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;

    iget-object v4, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isMatch:[S

    invoke-virtual {v0, v4, v5, v9}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->Encode([SII)V

    .line 1132
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchFinder:Lcom/badlogic/gdx/utils/compression/lz/BinTree;

    iget v4, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_additionalOffset:I

    rsub-int/lit8 v4, v4, 0x0

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->GetIndexByte(I)B

    move-result v0

    .line 1133
    iget-object v4, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_literalEncoder:Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder;

    iget-wide v5, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->nowPos64:J

    long-to-int v5, v5

    iget-byte v6, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_previousByte:B

    invoke-virtual {v4, v5, v6}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder;->GetSubCoder(IB)Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder$Encoder2;

    move-result-object v4

    .line 1134
    iget v5, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_state:I

    invoke-static {v5}, Lcom/badlogic/gdx/utils/compression/lzma/Base;->StateIsCharState(I)Z

    move-result v5

    if-nez v5, :cond_7

    .line 1136
    iget-object v5, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchFinder:Lcom/badlogic/gdx/utils/compression/lz/BinTree;

    iget-object v6, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_repDistances:[I

    aget v6, v6, v9

    rsub-int/lit8 v6, v6, 0x0

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_additionalOffset:I

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->GetIndexByte(I)B

    move-result v5

    .line 1137
    iget-object v6, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_rangeEncoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;

    invoke-virtual {v4, v6, v5, v0}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder$Encoder2;->EncodeMatched(Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;BB)V

    .line 1141
    :goto_1
    iput-byte v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_previousByte:B

    .line 1142
    iget v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_state:I

    invoke-static {v0}, Lcom/badlogic/gdx/utils/compression/lzma/Base;->StateUpdateChar(I)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_state:I

    .line 1218
    :goto_2
    iget v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_additionalOffset:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_additionalOffset:I

    .line 1219
    iget-wide v4, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->nowPos64:J

    int-to-long v6, v3

    add-long v3, v4, v6

    iput-wide v3, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->nowPos64:J

    .line 1220
    iget v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_additionalOffset:I

    if-nez v0, :cond_4

    .line 1223
    iget v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchPriceCount:I

    const/16 v3, 0x80

    if-lt v0, v3, :cond_5

    .line 1224
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->FillDistancesPrices()V

    .line 1225
    :cond_5
    iget v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_alignPriceCount:I

    const/16 v3, 0x10

    if-lt v0, v3, :cond_6

    .line 1226
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->FillAlignPrices()V

    .line 1227
    :cond_6
    iget-wide v3, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->nowPos64:J

    aput-wide v3, p1, v9

    .line 1228
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_rangeEncoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->GetProcessedSizeAdd()J

    move-result-wide v3

    aput-wide v3, p2, v9

    .line 1229
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchFinder:Lcom/badlogic/gdx/utils/compression/lz/BinTree;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->GetNumAvailableBytes()I

    move-result v0

    if-nez v0, :cond_13

    .line 1231
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->nowPos64:J

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->Flush(I)V

    goto/16 :goto_0

    .line 1140
    :cond_7
    iget-object v5, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_rangeEncoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;

    invoke-virtual {v4, v5, v0}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder$Encoder2;->Encode(Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;B)V

    goto :goto_1

    .line 1146
    :cond_8
    iget-object v6, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_rangeEncoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;

    iget-object v7, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isMatch:[S

    invoke-virtual {v6, v7, v5, v10}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->Encode([SII)V

    .line 1147
    if-ge v0, v11, :cond_f

    .line 1149
    iget-object v6, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_rangeEncoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;

    iget-object v7, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isRep:[S

    iget v8, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_state:I

    invoke-virtual {v6, v7, v8, v10}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->Encode([SII)V

    .line 1150
    if-nez v0, :cond_a

    .line 1152
    iget-object v6, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_rangeEncoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;

    iget-object v7, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isRepG0:[S

    iget v8, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_state:I

    invoke-virtual {v6, v7, v8, v9}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->Encode([SII)V

    .line 1153
    if-ne v3, v10, :cond_9

    .line 1154
    iget-object v6, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_rangeEncoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;

    iget-object v7, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isRep0Long:[S

    invoke-virtual {v6, v7, v5, v9}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->Encode([SII)V

    .line 1169
    :goto_3
    if-ne v3, v10, :cond_c

    .line 1170
    iget v4, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_state:I

    invoke-static {v4}, Lcom/badlogic/gdx/utils/compression/lzma/Base;->StateUpdateShortRep(I)I

    move-result v4

    iput v4, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_state:I

    .line 1176
    :goto_4
    iget-object v4, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_repDistances:[I

    aget v4, v4, v0

    .line 1177
    if-eqz v0, :cond_e

    .line 1179
    :goto_5
    if-lez v0, :cond_d

    .line 1180
    iget-object v5, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_repDistances:[I

    iget-object v6, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_repDistances:[I

    add-int/lit8 v7, v0, -0x1

    aget v6, v6, v7

    aput v6, v5, v0

    .line 1179
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    .line 1156
    :cond_9
    iget-object v6, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_rangeEncoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;

    iget-object v7, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isRep0Long:[S

    invoke-virtual {v6, v7, v5, v10}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->Encode([SII)V

    goto :goto_3

    .line 1160
    :cond_a
    iget-object v5, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_rangeEncoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;

    iget-object v6, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isRepG0:[S

    iget v7, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_state:I

    invoke-virtual {v5, v6, v7, v10}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->Encode([SII)V

    .line 1161
    if-ne v0, v10, :cond_b

    .line 1162
    iget-object v5, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_rangeEncoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;

    iget-object v6, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isRepG1:[S

    iget v7, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_state:I

    invoke-virtual {v5, v6, v7, v9}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->Encode([SII)V

    goto :goto_3

    .line 1165
    :cond_b
    iget-object v5, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_rangeEncoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;

    iget-object v6, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isRepG1:[S

    iget v7, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_state:I

    invoke-virtual {v5, v6, v7, v10}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->Encode([SII)V

    .line 1166
    iget-object v5, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_rangeEncoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;

    iget-object v6, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isRepG2:[S

    iget v7, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_state:I

    add-int/lit8 v8, v0, -0x2

    invoke-virtual {v5, v6, v7, v8}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->Encode([SII)V

    goto :goto_3

    .line 1173
    :cond_c
    iget-object v5, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_repMatchLenEncoder:Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenPriceTableEncoder;

    iget-object v6, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_rangeEncoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;

    add-int/lit8 v7, v3, -0x2

    invoke-virtual {v5, v6, v7, v4}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenPriceTableEncoder;->Encode(Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;II)V

    .line 1174
    iget v4, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_state:I

    invoke-static {v4}, Lcom/badlogic/gdx/utils/compression/lzma/Base;->StateUpdateRep(I)I

    move-result v4

    iput v4, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_state:I

    goto :goto_4

    .line 1181
    :cond_d
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_repDistances:[I

    aput v4, v0, v9

    .line 1216
    :cond_e
    :goto_6
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchFinder:Lcom/badlogic/gdx/utils/compression/lz/BinTree;

    add-int/lit8 v4, v3, -0x1

    iget v5, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_additionalOffset:I

    sub-int/2addr v4, v5

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->GetIndexByte(I)B

    move-result v0

    iput-byte v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_previousByte:B

    goto/16 :goto_2

    .line 1186
    :cond_f
    iget-object v5, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_rangeEncoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;

    iget-object v6, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isRep:[S

    iget v7, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_state:I

    invoke-virtual {v5, v6, v7, v9}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->Encode([SII)V

    .line 1187
    iget v5, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_state:I

    invoke-static {v5}, Lcom/badlogic/gdx/utils/compression/lzma/Base;->StateUpdateMatch(I)I

    move-result v5

    iput v5, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_state:I

    .line 1188
    iget-object v5, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_lenEncoder:Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenPriceTableEncoder;

    iget-object v6, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_rangeEncoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;

    add-int/lit8 v7, v3, -0x2

    invoke-virtual {v5, v6, v7, v4}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenPriceTableEncoder;->Encode(Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;II)V

    .line 1189
    add-int/lit8 v4, v0, -0x4

    .line 1190
    invoke-static {v4}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->GetPosSlot(I)I

    move-result v0

    .line 1191
    invoke-static {v3}, Lcom/badlogic/gdx/utils/compression/lzma/Base;->GetLenToPosState(I)I

    move-result v5

    .line 1192
    iget-object v6, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_posSlotEncoder:[Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;

    aget-object v5, v6, v5

    iget-object v6, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_rangeEncoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;

    invoke-virtual {v5, v6, v0}, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;->Encode(Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;I)V

    .line 1194
    if-lt v0, v11, :cond_10

    .line 1196
    shr-int/lit8 v5, v0, 0x1

    add-int/lit8 v5, v5, -0x1

    .line 1197
    and-int/lit8 v6, v0, 0x1

    or-int/lit8 v6, v6, 0x2

    shl-int/2addr v6, v5

    .line 1198
    sub-int v7, v4, v6

    .line 1200
    const/16 v8, 0xe

    if-ge v0, v8, :cond_11

    .line 1201
    iget-object v8, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_posEncoders:[S

    sub-int v0, v6, v0

    add-int/lit8 v0, v0, -0x1

    iget-object v6, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_rangeEncoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;

    invoke-static {v8, v0, v6, v5, v7}, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;->ReverseEncode([SILcom/badlogic/gdx/utils/compression/rangecoder/Encoder;II)V

    .line 1210
    :cond_10
    :goto_7
    const/4 v0, 0x3

    :goto_8
    if-lez v0, :cond_12

    .line 1212
    iget-object v5, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_repDistances:[I

    iget-object v6, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_repDistances:[I

    add-int/lit8 v7, v0, -0x1

    aget v6, v6, v7

    aput v6, v5, v0

    .line 1211
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1205
    :cond_11
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_rangeEncoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;

    shr-int/lit8 v6, v7, 0x4

    add-int/lit8 v5, v5, -0x4

    invoke-virtual {v0, v6, v5}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->EncodeDirectBits(II)V

    .line 1206
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_posAlignEncoder:Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;

    iget-object v5, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_rangeEncoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;

    and-int/lit8 v6, v7, 0xf

    invoke-virtual {v0, v5, v6}, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;->ReverseEncode(Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;I)V

    .line 1207
    iget v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_alignPriceCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_alignPriceCount:I

    goto :goto_7

    .line 1213
    :cond_12
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_repDistances:[I

    aput v4, v0, v9

    .line 1214
    iget v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchPriceCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchPriceCount:I

    goto/16 :goto_6

    .line 1235
    :cond_13
    iget-wide v3, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->nowPos64:J

    sub-long/2addr v3, v1

    const-wide/16 v5, 0x1000

    cmp-long v0, v3, v5

    if-ltz v0, :cond_4

    .line 1237
    iput-boolean v9, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_finished:Z

    .line 1238
    aput-boolean v9, p3, v9

    goto/16 :goto_0
.end method

.method Create()V
    .locals 5

    .prologue
    .line 380
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchFinder:Lcom/badlogic/gdx/utils/compression/lz/BinTree;

    if-nez v0, :cond_1

    .line 382
    new-instance v1, Lcom/badlogic/gdx/utils/compression/lz/BinTree;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;-><init>()V

    .line 383
    const/4 v0, 0x4

    .line 384
    iget v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchFinderType:I

    if-nez v2, :cond_0

    .line 385
    const/4 v0, 0x2

    .line 386
    :cond_0
    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->SetType(I)V

    .line 387
    iput-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchFinder:Lcom/badlogic/gdx/utils/compression/lz/BinTree;

    .line 389
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_literalEncoder:Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder;

    iget v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_numLiteralPosStateBits:I

    iget v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_numLiteralContextBits:I

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder;->Create(II)V

    .line 391
    iget v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_dictionarySize:I

    iget v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_dictionarySizePrev:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_numFastBytesPrev:I

    iget v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_numFastBytes:I

    if-ne v0, v1, :cond_2

    .line 396
    :goto_0
    return-void

    .line 393
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchFinder:Lcom/badlogic/gdx/utils/compression/lz/BinTree;

    iget v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_dictionarySize:I

    const/16 v2, 0x1000

    iget v3, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_numFastBytes:I

    const/16 v4, 0x112

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->Create(IIII)Z

    .line 394
    iget v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_dictionarySize:I

    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_dictionarySizePrev:I

    .line 395
    iget v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_numFastBytes:I

    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_numFastBytesPrev:I

    goto :goto_0
.end method

.method FillAlignPrices()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1364
    move v0, v1

    :goto_0
    const/16 v2, 0x10

    if-ge v0, v2, :cond_0

    .line 1365
    iget-object v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_alignPrices:[I

    iget-object v3, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_posAlignEncoder:Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;->ReverseGetPrice(I)I

    move-result v3

    aput v3, v2, v0

    .line 1364
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1366
    :cond_0
    iput v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_alignPriceCount:I

    .line 1367
    return-void
.end method

.method FillDistancesPrices()V
    .locals 11

    .prologue
    const/16 v10, 0x80

    const/4 v3, 0x4

    const/4 v1, 0x0

    .line 1332
    move v0, v3

    :goto_0
    if-ge v0, v10, :cond_0

    .line 1334
    invoke-static {v0}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->GetPosSlot(I)I

    move-result v2

    .line 1335
    shr-int/lit8 v4, v2, 0x1

    add-int/lit8 v4, v4, -0x1

    .line 1336
    and-int/lit8 v5, v2, 0x1

    or-int/lit8 v5, v5, 0x2

    shl-int/2addr v5, v4

    .line 1337
    iget-object v6, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->tempPrices:[I

    iget-object v7, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_posEncoders:[S

    sub-int v2, v5, v2

    add-int/lit8 v2, v2, -0x1

    sub-int v5, v0, v5

    invoke-static {v7, v2, v4, v5}, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;->ReverseGetPrice([SIII)I

    move-result v2

    aput v2, v6, v0

    .line 1332
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    .line 1341
    :goto_1
    if-ge v2, v3, :cond_5

    .line 1344
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_posSlotEncoder:[Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;

    aget-object v4, v0, v2

    .line 1346
    shl-int/lit8 v5, v2, 0x6

    move v0, v1

    .line 1347
    :goto_2
    iget v6, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_distTableSize:I

    if-ge v0, v6, :cond_1

    .line 1348
    iget-object v6, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_posSlotPrices:[I

    add-int v7, v5, v0

    invoke-virtual {v4, v0}, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;->GetPrice(I)I

    move-result v8

    aput v8, v6, v7

    .line 1347
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1349
    :cond_1
    const/16 v0, 0xe

    :goto_3
    iget v4, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_distTableSize:I

    if-ge v0, v4, :cond_2

    .line 1350
    iget-object v4, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_posSlotPrices:[I

    add-int v6, v5, v0

    aget v7, v4, v6

    shr-int/lit8 v8, v0, 0x1

    add-int/lit8 v8, v8, -0x1

    add-int/lit8 v8, v8, -0x4

    shl-int/lit8 v8, v8, 0x6

    add-int/2addr v7, v8

    aput v7, v4, v6

    .line 1349
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1352
    :cond_2
    mul-int/lit16 v4, v2, 0x80

    move v0, v1

    .line 1354
    :goto_4
    if-ge v0, v3, :cond_3

    .line 1355
    iget-object v6, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_distancesPrices:[I

    add-int v7, v4, v0

    iget-object v8, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_posSlotPrices:[I

    add-int v9, v5, v0

    aget v8, v8, v9

    aput v8, v6, v7

    .line 1354
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1356
    :cond_3
    :goto_5
    if-ge v0, v10, :cond_4

    .line 1357
    iget-object v6, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_distancesPrices:[I

    add-int v7, v4, v0

    iget-object v8, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_posSlotPrices:[I

    invoke-static {v0}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->GetPosSlot(I)I

    move-result v9

    add-int/2addr v9, v5

    aget v8, v8, v9

    iget-object v9, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->tempPrices:[I

    aget v9, v9, v0

    add-int/2addr v8, v9

    aput v8, v6, v7

    .line 1356
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1341
    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 1359
    :cond_5
    iput v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchPriceCount:I

    .line 1360
    return-void
.end method

.method Flush(I)V
    .locals 1
    .parameter

    .prologue
    .line 1073
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->ReleaseMFStream()V

    .line 1074
    iget v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_posStateMask:I

    and-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->WriteEndMarker(I)V

    .line 1075
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_rangeEncoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->FlushData()V

    .line 1076
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_rangeEncoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->FlushStream()V

    .line 1077
    return-void
.end method

.method GetOptimum(I)I
    .locals 24
    .parameter

    .prologue
    .line 557
    move-object/from16 v0, p0

    iget v3, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimumEndIndex:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimumCurrentIndex:I

    if-eq v3, v4, :cond_0

    .line 559
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimumCurrentIndex:I

    aget-object v3, v3, v4

    iget v3, v3, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->PosPrev:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimumCurrentIndex:I

    sub-int/2addr v3, v4

    .line 560
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimumCurrentIndex:I

    aget-object v4, v4, v5

    iget v4, v4, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->BackPrev:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->backRes:I

    .line 561
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimumCurrentIndex:I

    aget-object v4, v4, v5

    iget v4, v4, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->PosPrev:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimumCurrentIndex:I

    .line 725
    :goto_0
    return v3

    .line 564
    :cond_0
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimumEndIndex:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimumCurrentIndex:I

    .line 567
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_longestMatchWasFound:Z

    if-nez v3, :cond_1

    .line 569
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->ReadMatchDistances()I

    move-result v3

    .line 576
    :goto_1
    move-object/from16 v0, p0

    iget v7, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_numDistancePairs:I

    .line 578
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchFinder:Lcom/badlogic/gdx/utils/compression/lz/BinTree;

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->GetNumAvailableBytes()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    .line 579
    const/4 v5, 0x2

    if-ge v4, v5, :cond_2

    .line 581
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->backRes:I

    .line 582
    const/4 v3, 0x1

    goto :goto_0

    .line 573
    :cond_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_longestMatchLength:I

    .line 574
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_longestMatchWasFound:Z

    goto :goto_1

    .line 584
    :cond_2
    const/4 v4, 0x0

    .line 589
    const/4 v5, 0x0

    :goto_2
    const/4 v6, 0x4

    if-ge v5, v6, :cond_4

    .line 591
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->reps:[I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_repDistances:[I

    aget v8, v8, v5

    aput v8, v6, v5

    .line 592
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->repLens:[I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchFinder:Lcom/badlogic/gdx/utils/compression/lz/BinTree;

    const/4 v9, -0x1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->reps:[I

    aget v10, v10, v5

    const/16 v11, 0x111

    invoke-virtual {v8, v9, v10, v11}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->GetMatchLen(III)I

    move-result v8

    aput v8, v6, v5

    .line 593
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->repLens:[I

    aget v6, v6, v5

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->repLens:[I

    aget v8, v8, v4

    if-le v6, v8, :cond_3

    move v4, v5

    .line 589
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 596
    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->repLens:[I

    aget v5, v5, v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_numFastBytes:I

    if-lt v5, v6, :cond_5

    .line 598
    move-object/from16 v0, p0

    iput v4, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->backRes:I

    .line 599
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->repLens:[I

    aget v3, v3, v4

    .line 600
    add-int/lit8 v4, v3, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->MovePos(I)V

    goto/16 :goto_0

    .line 604
    :cond_5
    move-object/from16 v0, p0

    iget v5, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_numFastBytes:I

    if-lt v3, v5, :cond_6

    .line 606
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchDistances:[I

    add-int/lit8 v5, v7, -0x1

    aget v4, v4, v5

    add-int/lit8 v4, v4, 0x4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->backRes:I

    .line 607
    add-int/lit8 v4, v3, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->MovePos(I)V

    goto/16 :goto_0

    .line 611
    :cond_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchFinder:Lcom/badlogic/gdx/utils/compression/lz/BinTree;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->GetIndexByte(I)B

    move-result v6

    .line 612
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchFinder:Lcom/badlogic/gdx/utils/compression/lz/BinTree;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_repDistances:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    rsub-int/lit8 v8, v8, 0x0

    add-int/lit8 v8, v8, -0x1

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v5, v8}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->GetIndexByte(I)B

    move-result v8

    .line 614
    const/4 v5, 0x2

    if-ge v3, v5, :cond_7

    if-eq v6, v8, :cond_7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->repLens:[I

    aget v5, v5, v4

    const/4 v9, 0x2

    if-ge v5, v9, :cond_7

    .line 616
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->backRes:I

    .line 617
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 620
    :cond_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    const/4 v9, 0x0

    aget-object v5, v5, v9

    move-object/from16 v0, p0

    iget v9, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_state:I

    iput v9, v5, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->State:I

    .line 622
    move-object/from16 v0, p0

    iget v5, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_posStateMask:I

    and-int v9, p1, v5

    .line 624
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    const/4 v10, 0x1

    aget-object v10, v5, v10

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isMatch:[S

    move-object/from16 v0, p0

    iget v11, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_state:I

    shl-int/lit8 v11, v11, 0x4

    add-int/2addr v11, v9

    aget-short v5, v5, v11

    invoke-static {v5}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->GetPrice0(I)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_literalEncoder:Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder;

    move-object/from16 v0, p0

    iget-byte v12, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_previousByte:B

    move/from16 v0, p1

    invoke-virtual {v5, v0, v12}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder;->GetSubCoder(IB)Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder$Encoder2;

    move-result-object v12

    move-object/from16 v0, p0

    iget v5, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_state:I

    invoke-static {v5}, Lcom/badlogic/gdx/utils/compression/lzma/Base;->StateIsCharState(I)Z

    move-result v5

    if-nez v5, :cond_9

    const/4 v5, 0x1

    :goto_3
    invoke-virtual {v12, v5, v8, v6}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder$Encoder2;->GetPrice(ZBB)I

    move-result v5

    add-int/2addr v5, v11

    iput v5, v10, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Price:I

    .line 626
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    const/4 v10, 0x1

    aget-object v5, v5, v10

    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->MakeAsChar()V

    .line 628
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isMatch:[S

    move-object/from16 v0, p0

    iget v10, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_state:I

    shl-int/lit8 v10, v10, 0x4

    add-int/2addr v10, v9

    aget-short v5, v5, v10

    invoke-static {v5}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->GetPrice1(I)I

    move-result v10

    .line 629
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isRep:[S

    move-object/from16 v0, p0

    iget v11, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_state:I

    aget-short v5, v5, v11

    invoke-static {v5}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->GetPrice1(I)I

    move-result v5

    add-int v11, v10, v5

    .line 631
    if-ne v8, v6, :cond_8

    .line 633
    move-object/from16 v0, p0

    iget v5, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_state:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v9}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->GetRepLen1Price(II)I

    move-result v5

    add-int/2addr v5, v11

    .line 634
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    const/4 v8, 0x1

    aget-object v6, v6, v8

    iget v6, v6, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Price:I

    if-ge v5, v6, :cond_8

    .line 636
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    const/4 v8, 0x1

    aget-object v6, v6, v8

    iput v5, v6, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Price:I

    .line 637
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->MakeAsShortRep()V

    .line 641
    :cond_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->repLens:[I

    aget v5, v5, v4

    if-lt v3, v5, :cond_a

    move v5, v3

    .line 643
    :goto_4
    const/4 v4, 0x2

    if-ge v5, v4, :cond_b

    .line 645
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    iget v3, v3, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->BackPrev:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->backRes:I

    .line 646
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 624
    :cond_9
    const/4 v5, 0x0

    goto :goto_3

    .line 641
    :cond_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->repLens:[I

    aget v5, v5, v4

    goto :goto_4

    .line 649
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    const/4 v6, 0x1

    aget-object v4, v4, v6

    const/4 v6, 0x0

    iput v6, v4, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->PosPrev:I

    .line 651
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    const/4 v6, 0x0

    aget-object v4, v4, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->reps:[I

    const/4 v8, 0x0

    aget v6, v6, v8

    iput v6, v4, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Backs0:I

    .line 652
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    const/4 v6, 0x0

    aget-object v4, v4, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->reps:[I

    const/4 v8, 0x1

    aget v6, v6, v8

    iput v6, v4, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Backs1:I

    .line 653
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    const/4 v6, 0x0

    aget-object v4, v4, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->reps:[I

    const/4 v8, 0x2

    aget v6, v6, v8

    iput v6, v4, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Backs2:I

    .line 654
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    const/4 v6, 0x0

    aget-object v4, v4, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->reps:[I

    const/4 v8, 0x3

    aget v6, v6, v8

    iput v6, v4, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Backs3:I

    move v4, v5

    .line 658
    :goto_5
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    add-int/lit8 v6, v4, -0x1

    aget-object v4, v8, v4

    const v8, 0xfffffff

    iput v8, v4, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Price:I

    .line 659
    const/4 v4, 0x2

    if-ge v6, v4, :cond_3c

    .line 661
    const/4 v4, 0x0

    move v6, v4

    :goto_6
    const/4 v4, 0x4

    if-ge v6, v4, :cond_f

    .line 663
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->repLens:[I

    aget v4, v4, v6

    .line 664
    const/4 v8, 0x2

    if-lt v4, v8, :cond_e

    .line 665
    move-object/from16 v0, p0

    iget v8, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_state:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v8, v9}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->GetPureRepPrice(III)I

    move-result v8

    add-int/2addr v8, v11

    .line 669
    :cond_c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_repMatchLenEncoder:Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenPriceTableEncoder;

    add-int/lit8 v13, v4, -0x2

    invoke-virtual {v12, v13, v9}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenPriceTableEncoder;->GetPrice(II)I

    move-result v12

    add-int/2addr v12, v8

    .line 670
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    aget-object v13, v13, v4

    .line 671
    iget v14, v13, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Price:I

    if-ge v12, v14, :cond_d

    .line 673
    iput v12, v13, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Price:I

    .line 674
    const/4 v12, 0x0

    iput v12, v13, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->PosPrev:I

    .line 675
    iput v6, v13, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->BackPrev:I

    .line 676
    const/4 v12, 0x0

    iput-boolean v12, v13, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Prev1IsChar:Z

    .line 679
    :cond_d
    add-int/lit8 v4, v4, -0x1

    const/4 v12, 0x2

    if-ge v4, v12, :cond_c

    .line 661
    :cond_e
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_6

    .line 682
    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isRep:[S

    move-object/from16 v0, p0

    iget v6, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_state:I

    aget-short v4, v4, v6

    invoke-static {v4}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->GetPrice0(I)I

    move-result v4

    add-int v6, v10, v4

    .line 684
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->repLens:[I

    const/4 v8, 0x0

    aget v4, v4, v8

    const/4 v8, 0x2

    if-lt v4, v8, :cond_10

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->repLens:[I

    const/4 v8, 0x0

    aget v4, v4, v8

    add-int/lit8 v4, v4, 0x1

    .line 685
    :goto_7
    if-gt v4, v3, :cond_14

    .line 687
    const/4 v3, 0x0

    .line 688
    :goto_8
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchDistances:[I

    aget v8, v8, v3

    if-le v4, v8, :cond_11

    .line 689
    add-int/lit8 v3, v3, 0x2

    goto :goto_8

    .line 684
    :cond_10
    const/4 v4, 0x2

    goto :goto_7

    .line 692
    :cond_11
    :goto_9
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchDistances:[I

    add-int/lit8 v10, v3, 0x1

    aget v8, v8, v10

    .line 693
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v4, v9}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->GetPosLenPrice(III)I

    move-result v10

    add-int/2addr v10, v6

    .line 694
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    aget-object v11, v11, v4

    .line 695
    iget v12, v11, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Price:I

    if-ge v10, v12, :cond_12

    .line 697
    iput v10, v11, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Price:I

    .line 698
    const/4 v10, 0x0

    iput v10, v11, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->PosPrev:I

    .line 699
    add-int/lit8 v8, v8, 0x4

    iput v8, v11, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->BackPrev:I

    .line 700
    const/4 v8, 0x0

    iput-boolean v8, v11, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Prev1IsChar:Z

    .line 702
    :cond_12
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchDistances:[I

    aget v8, v8, v3

    if-ne v4, v8, :cond_13

    .line 704
    add-int/lit8 v3, v3, 0x2

    .line 705
    if-eq v3, v7, :cond_14

    .line 706
    :cond_13
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 711
    :cond_14
    const/4 v3, 0x0

    move v6, v5

    .line 715
    :goto_a
    add-int/lit8 v13, v3, 0x1

    .line 716
    if-ne v13, v6, :cond_15

    .line 717
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->Backward(I)I

    move-result v3

    goto/16 :goto_0

    .line 718
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->ReadMatchDistances()I

    move-result v8

    .line 719
    move-object/from16 v0, p0

    iget v9, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_numDistancePairs:I

    .line 720
    move-object/from16 v0, p0

    iget v3, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_numFastBytes:I

    if-lt v8, v3, :cond_16

    .line 723
    move-object/from16 v0, p0

    iput v8, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_longestMatchLength:I

    .line 724
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_longestMatchWasFound:Z

    .line 725
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->Backward(I)I

    move-result v3

    goto/16 :goto_0

    .line 727
    :cond_16
    add-int/lit8 p1, p1, 0x1

    .line 728
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    aget-object v3, v3, v13

    iget v5, v3, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->PosPrev:I

    .line 730
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    aget-object v3, v3, v13

    iget-boolean v3, v3, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Prev1IsChar:Z

    if-eqz v3, :cond_1c

    .line 732
    add-int/lit8 v5, v5, -0x1

    .line 733
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    aget-object v3, v3, v13

    iget-boolean v3, v3, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Prev2:Z

    if-eqz v3, :cond_1b

    .line 735
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    aget-object v4, v4, v13

    iget v4, v4, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->PosPrev2:I

    aget-object v3, v3, v4

    iget v3, v3, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->State:I

    .line 736
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    aget-object v4, v4, v13

    iget v4, v4, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->BackPrev2:I

    const/4 v7, 0x4

    if-ge v4, v7, :cond_1a

    .line 737
    invoke-static {v3}, Lcom/badlogic/gdx/utils/compression/lzma/Base;->StateUpdateRep(I)I

    move-result v3

    .line 743
    :goto_b
    invoke-static {v3}, Lcom/badlogic/gdx/utils/compression/lzma/Base;->StateUpdateChar(I)I

    move-result v3

    move v4, v3

    .line 747
    :goto_c
    add-int/lit8 v3, v13, -0x1

    if-ne v5, v3, :cond_1e

    .line 749
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    aget-object v3, v3, v13

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->IsShortRep()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 750
    invoke-static {v4}, Lcom/badlogic/gdx/utils/compression/lzma/Base;->StateUpdateShortRep(I)I

    move-result v4

    .line 811
    :goto_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    aget-object v3, v3, v13

    iput v4, v3, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->State:I

    .line 812
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    aget-object v3, v3, v13

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->reps:[I

    const/4 v7, 0x0

    aget v5, v5, v7

    iput v5, v3, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Backs0:I

    .line 813
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    aget-object v3, v3, v13

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->reps:[I

    const/4 v7, 0x1

    aget v5, v5, v7

    iput v5, v3, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Backs1:I

    .line 814
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    aget-object v3, v3, v13

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->reps:[I

    const/4 v7, 0x2

    aget v5, v5, v7

    iput v5, v3, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Backs2:I

    .line 815
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    aget-object v3, v3, v13

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->reps:[I

    const/4 v7, 0x3

    aget v5, v5, v7

    iput v5, v3, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Backs3:I

    .line 816
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    aget-object v3, v3, v13

    iget v5, v3, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Price:I

    .line 818
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchFinder:Lcom/badlogic/gdx/utils/compression/lz/BinTree;

    const/4 v7, -0x1

    invoke-virtual {v3, v7}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->GetIndexByte(I)B

    move-result v10

    .line 819
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchFinder:Lcom/badlogic/gdx/utils/compression/lz/BinTree;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->reps:[I

    const/4 v11, 0x0

    aget v7, v7, v11

    rsub-int/lit8 v7, v7, 0x0

    add-int/lit8 v7, v7, -0x1

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v3, v7}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->GetIndexByte(I)B

    move-result v11

    .line 821
    move-object/from16 v0, p0

    iget v3, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_posStateMask:I

    and-int v14, p1, v3

    .line 823
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isMatch:[S

    shl-int/lit8 v7, v4, 0x4

    add-int/2addr v7, v14

    aget-short v3, v3, v7

    invoke-static {v3}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->GetPrice0(I)I

    move-result v3

    add-int v7, v5, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_literalEncoder:Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchFinder:Lcom/badlogic/gdx/utils/compression/lz/BinTree;

    const/4 v15, -0x2

    invoke-virtual {v12, v15}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->GetIndexByte(I)B

    move-result v12

    move/from16 v0, p1

    invoke-virtual {v3, v0, v12}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder;->GetSubCoder(IB)Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder$Encoder2;

    move-result-object v12

    invoke-static {v4}, Lcom/badlogic/gdx/utils/compression/lzma/Base;->StateIsCharState(I)Z

    move-result v3

    if-nez v3, :cond_25

    const/4 v3, 0x1

    :goto_e
    invoke-virtual {v12, v3, v11, v10}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder$Encoder2;->GetPrice(ZBB)I

    move-result v3

    add-int v15, v7, v3

    .line 828
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    add-int/lit8 v7, v13, 0x1

    aget-object v7, v3, v7

    .line 830
    const/4 v3, 0x0

    .line 831
    iget v12, v7, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Price:I

    if-ge v15, v12, :cond_17

    .line 833
    iput v15, v7, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Price:I

    .line 834
    iput v13, v7, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->PosPrev:I

    .line 835
    invoke-virtual {v7}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->MakeAsChar()V

    .line 836
    const/4 v3, 0x1

    .line 839
    :cond_17
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isMatch:[S

    shl-int/lit8 v16, v4, 0x4

    add-int v16, v16, v14

    aget-short v12, v12, v16

    invoke-static {v12}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->GetPrice1(I)I

    move-result v12

    add-int v16, v5, v12

    .line 840
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isRep:[S

    aget-short v5, v5, v4

    invoke-static {v5}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->GetPrice1(I)I

    move-result v5

    add-int v17, v16, v5

    .line 842
    if-ne v11, v10, :cond_19

    iget v5, v7, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->PosPrev:I

    if-ge v5, v13, :cond_18

    iget v5, v7, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->BackPrev:I

    if-eqz v5, :cond_19

    .line 845
    :cond_18
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v14}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->GetRepLen1Price(II)I

    move-result v5

    add-int v5, v5, v17

    .line 846
    iget v12, v7, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Price:I

    if-gt v5, v12, :cond_19

    .line 848
    iput v5, v7, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Price:I

    .line 849
    iput v13, v7, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->PosPrev:I

    .line 850
    invoke-virtual {v7}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->MakeAsShortRep()V

    .line 851
    const/4 v3, 0x1

    .line 855
    :cond_19
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchFinder:Lcom/badlogic/gdx/utils/compression/lz/BinTree;

    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->GetNumAvailableBytes()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    .line 856
    rsub-int v7, v13, 0xfff

    invoke-static {v7, v5}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 859
    const/4 v5, 0x2

    if-lt v12, v5, :cond_3b

    .line 860
    move-object/from16 v0, p0

    iget v5, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_numFastBytes:I

    if-le v12, v5, :cond_3a

    .line 862
    move-object/from16 v0, p0

    iget v7, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_numFastBytes:I

    .line 863
    :goto_f
    if-nez v3, :cond_39

    if-eq v11, v10, :cond_39

    .line 866
    add-int/lit8 v3, v12, -0x1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_numFastBytes:I

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 867
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchFinder:Lcom/badlogic/gdx/utils/compression/lz/BinTree;

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->reps:[I

    const/16 v18, 0x0

    aget v11, v11, v18

    invoke-virtual {v5, v10, v11, v3}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->GetMatchLen(III)I

    move-result v5

    .line 868
    const/4 v3, 0x2

    if-lt v5, v3, :cond_39

    .line 870
    invoke-static {v4}, Lcom/badlogic/gdx/utils/compression/lzma/Base;->StateUpdateChar(I)I

    move-result v10

    .line 872
    add-int/lit8 v3, p1, 0x1

    move-object/from16 v0, p0

    iget v11, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_posStateMask:I

    and-int/2addr v11, v3

    .line 873
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isMatch:[S

    shl-int/lit8 v18, v10, 0x4

    add-int v18, v18, v11

    aget-short v3, v3, v18

    invoke-static {v3}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->GetPrice1(I)I

    move-result v3

    add-int/2addr v3, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isRep:[S

    aget-short v15, v15, v10

    invoke-static {v15}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->GetPrice1(I)I

    move-result v15

    add-int/2addr v15, v3

    .line 877
    add-int/lit8 v3, v13, 0x1

    add-int v18, v3, v5

    move v3, v6

    .line 878
    :goto_10
    move/from16 v0, v18

    if-ge v3, v0, :cond_26

    .line 879
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    add-int/lit8 v3, v3, 0x1

    aget-object v6, v6, v3

    const v19, 0xfffffff

    move/from16 v0, v19

    iput v0, v6, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Price:I

    goto :goto_10

    .line 739
    :cond_1a
    invoke-static {v3}, Lcom/badlogic/gdx/utils/compression/lzma/Base;->StateUpdateMatch(I)I

    move-result v3

    goto/16 :goto_b

    .line 742
    :cond_1b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    aget-object v3, v3, v5

    iget v3, v3, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->State:I

    goto/16 :goto_b

    .line 746
    :cond_1c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    aget-object v3, v3, v5

    iget v3, v3, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->State:I

    move v4, v3

    goto/16 :goto_c

    .line 752
    :cond_1d
    invoke-static {v4}, Lcom/badlogic/gdx/utils/compression/lzma/Base;->StateUpdateChar(I)I

    move-result v4

    goto/16 :goto_d

    .line 757
    :cond_1e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    aget-object v3, v3, v13

    iget-boolean v3, v3, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Prev1IsChar:Z

    if-eqz v3, :cond_1f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    aget-object v3, v3, v13

    iget-boolean v3, v3, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Prev2:Z

    if-eqz v3, :cond_1f

    .line 759
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    aget-object v3, v3, v13

    iget v5, v3, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->PosPrev2:I

    .line 760
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    aget-object v3, v3, v13

    iget v3, v3, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->BackPrev2:I

    .line 761
    invoke-static {v4}, Lcom/badlogic/gdx/utils/compression/lzma/Base;->StateUpdateRep(I)I

    move-result v4

    .line 771
    :goto_11
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    aget-object v5, v7, v5

    .line 772
    const/4 v7, 0x4

    if-ge v3, v7, :cond_24

    .line 774
    if-nez v3, :cond_21

    .line 776
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->reps:[I

    const/4 v7, 0x0

    iget v10, v5, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Backs0:I

    aput v10, v3, v7

    .line 777
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->reps:[I

    const/4 v7, 0x1

    iget v10, v5, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Backs1:I

    aput v10, v3, v7

    .line 778
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->reps:[I

    const/4 v7, 0x2

    iget v10, v5, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Backs2:I

    aput v10, v3, v7

    .line 779
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->reps:[I

    const/4 v7, 0x3

    iget v5, v5, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Backs3:I

    aput v5, v3, v7

    goto/16 :goto_d

    .line 765
    :cond_1f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    aget-object v3, v3, v13

    iget v3, v3, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->BackPrev:I

    .line 766
    const/4 v7, 0x4

    if-ge v3, v7, :cond_20

    .line 767
    invoke-static {v4}, Lcom/badlogic/gdx/utils/compression/lzma/Base;->StateUpdateRep(I)I

    move-result v4

    goto :goto_11

    .line 769
    :cond_20
    invoke-static {v4}, Lcom/badlogic/gdx/utils/compression/lzma/Base;->StateUpdateMatch(I)I

    move-result v4

    goto :goto_11

    .line 781
    :cond_21
    const/4 v7, 0x1

    if-ne v3, v7, :cond_22

    .line 783
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->reps:[I

    const/4 v7, 0x0

    iget v10, v5, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Backs1:I

    aput v10, v3, v7

    .line 784
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->reps:[I

    const/4 v7, 0x1

    iget v10, v5, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Backs0:I

    aput v10, v3, v7

    .line 785
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->reps:[I

    const/4 v7, 0x2

    iget v10, v5, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Backs2:I

    aput v10, v3, v7

    .line 786
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->reps:[I

    const/4 v7, 0x3

    iget v5, v5, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Backs3:I

    aput v5, v3, v7

    goto/16 :goto_d

    .line 788
    :cond_22
    const/4 v7, 0x2

    if-ne v3, v7, :cond_23

    .line 790
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->reps:[I

    const/4 v7, 0x0

    iget v10, v5, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Backs2:I

    aput v10, v3, v7

    .line 791
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->reps:[I

    const/4 v7, 0x1

    iget v10, v5, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Backs0:I

    aput v10, v3, v7

    .line 792
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->reps:[I

    const/4 v7, 0x2

    iget v10, v5, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Backs1:I

    aput v10, v3, v7

    .line 793
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->reps:[I

    const/4 v7, 0x3

    iget v5, v5, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Backs3:I

    aput v5, v3, v7

    goto/16 :goto_d

    .line 797
    :cond_23
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->reps:[I

    const/4 v7, 0x0

    iget v10, v5, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Backs3:I

    aput v10, v3, v7

    .line 798
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->reps:[I

    const/4 v7, 0x1

    iget v10, v5, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Backs0:I

    aput v10, v3, v7

    .line 799
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->reps:[I

    const/4 v7, 0x2

    iget v10, v5, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Backs1:I

    aput v10, v3, v7

    .line 800
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->reps:[I

    const/4 v7, 0x3

    iget v5, v5, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Backs2:I

    aput v5, v3, v7

    goto/16 :goto_d

    .line 805
    :cond_24
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->reps:[I

    const/4 v10, 0x0

    add-int/lit8 v3, v3, -0x4

    aput v3, v7, v10

    .line 806
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->reps:[I

    const/4 v7, 0x1

    iget v10, v5, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Backs0:I

    aput v10, v3, v7

    .line 807
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->reps:[I

    const/4 v7, 0x2

    iget v10, v5, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Backs1:I

    aput v10, v3, v7

    .line 808
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->reps:[I

    const/4 v7, 0x3

    iget v5, v5, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Backs2:I

    aput v5, v3, v7

    goto/16 :goto_d

    .line 823
    :cond_25
    const/4 v3, 0x0

    goto/16 :goto_e

    .line 880
    :cond_26
    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v5, v10, v11}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->GetRepPrice(IIII)I

    move-result v5

    add-int/2addr v5, v15

    .line 882
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    aget-object v6, v6, v18

    .line 883
    iget v10, v6, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Price:I

    if-ge v5, v10, :cond_27

    .line 885
    iput v5, v6, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Price:I

    .line 886
    add-int/lit8 v5, v13, 0x1

    iput v5, v6, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->PosPrev:I

    .line 887
    const/4 v5, 0x0

    iput v5, v6, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->BackPrev:I

    .line 888
    const/4 v5, 0x1

    iput-boolean v5, v6, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Prev1IsChar:Z

    .line 889
    const/4 v5, 0x0

    iput-boolean v5, v6, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Prev2:Z

    .line 895
    :cond_27
    :goto_12
    const/4 v6, 0x2

    .line 897
    const/4 v5, 0x0

    move v11, v5

    move v5, v3

    move v3, v6

    :goto_13
    const/4 v6, 0x4

    if-ge v11, v6, :cond_2e

    .line 899
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchFinder:Lcom/badlogic/gdx/utils/compression/lz/BinTree;

    const/4 v10, -0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->reps:[I

    aget v15, v15, v11

    invoke-virtual {v6, v10, v15, v7}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->GetMatchLen(III)I

    move-result v10

    .line 900
    const/4 v6, 0x2

    if-lt v10, v6, :cond_2d

    move v6, v10

    .line 905
    :cond_28
    :goto_14
    add-int v15, v13, v6

    if-ge v5, v15, :cond_29

    .line 906
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    add-int/lit8 v5, v5, 0x1

    aget-object v15, v15, v5

    const v18, 0xfffffff

    move/from16 v0, v18

    iput v0, v15, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Price:I

    goto :goto_14

    .line 907
    :cond_29
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v6, v4, v14}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->GetRepPrice(IIII)I

    move-result v15

    add-int v15, v15, v17

    .line 908
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    move-object/from16 v18, v0

    add-int v19, v13, v6

    aget-object v18, v18, v19

    .line 909
    move-object/from16 v0, v18

    iget v0, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Price:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v15, v0, :cond_2a

    .line 911
    move-object/from16 v0, v18

    iput v15, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Price:I

    .line 912
    move-object/from16 v0, v18

    iput v13, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->PosPrev:I

    .line 913
    move-object/from16 v0, v18

    iput v11, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->BackPrev:I

    .line 914
    const/4 v15, 0x0

    move-object/from16 v0, v18

    iput-boolean v15, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Prev1IsChar:Z

    .line 917
    :cond_2a
    add-int/lit8 v6, v6, -0x1

    const/4 v15, 0x2

    if-ge v6, v15, :cond_28

    .line 920
    if-nez v11, :cond_2b

    .line 921
    add-int/lit8 v3, v10, 0x1

    .line 924
    :cond_2b
    if-ge v10, v12, :cond_2d

    .line 926
    add-int/lit8 v6, v12, -0x1

    sub-int/2addr v6, v10

    move-object/from16 v0, p0

    iget v15, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_numFastBytes:I

    invoke-static {v6, v15}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 927
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchFinder:Lcom/badlogic/gdx/utils/compression/lz/BinTree;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->reps:[I

    move-object/from16 v18, v0

    aget v18, v18, v11

    move/from16 v0, v18

    invoke-virtual {v15, v10, v0, v6}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->GetMatchLen(III)I

    move-result v6

    .line 928
    const/4 v15, 0x2

    if-lt v6, v15, :cond_2d

    .line 930
    invoke-static {v4}, Lcom/badlogic/gdx/utils/compression/lzma/Base;->StateUpdateRep(I)I

    move-result v15

    .line 932
    add-int v18, p1, v10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_posStateMask:I

    move/from16 v19, v0

    and-int v18, v18, v19

    .line 933
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v10, v4, v14}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->GetRepPrice(IIII)I

    move-result v19

    add-int v19, v19, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isMatch:[S

    move-object/from16 v20, v0

    shl-int/lit8 v21, v15, 0x4

    add-int v18, v18, v21

    aget-short v18, v20, v18

    invoke-static/range {v18 .. v18}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->GetPrice0(I)I

    move-result v18

    add-int v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_literalEncoder:Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder;

    move-object/from16 v19, v0

    add-int v20, p1, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchFinder:Lcom/badlogic/gdx/utils/compression/lz/BinTree;

    move-object/from16 v21, v0

    add-int/lit8 v22, v10, -0x1

    add-int/lit8 v22, v22, -0x1

    invoke-virtual/range {v21 .. v22}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->GetIndexByte(I)B

    move-result v21

    invoke-virtual/range {v19 .. v21}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder;->GetSubCoder(IB)Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder$Encoder2;

    move-result-object v19

    const/16 v20, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchFinder:Lcom/badlogic/gdx/utils/compression/lz/BinTree;

    move-object/from16 v21, v0

    add-int/lit8 v22, v10, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->reps:[I

    move-object/from16 v23, v0

    aget v23, v23, v11

    add-int/lit8 v23, v23, 0x1

    sub-int v22, v22, v23

    invoke-virtual/range {v21 .. v22}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->GetIndexByte(I)B

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchFinder:Lcom/badlogic/gdx/utils/compression/lz/BinTree;

    move-object/from16 v22, v0

    add-int/lit8 v23, v10, -0x1

    invoke-virtual/range {v22 .. v23}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->GetIndexByte(I)B

    move-result v22

    invoke-virtual/range {v19 .. v22}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder$Encoder2;->GetPrice(ZBB)I

    move-result v19

    add-int v18, v18, v19

    .line 940
    invoke-static {v15}, Lcom/badlogic/gdx/utils/compression/lzma/Base;->StateUpdateChar(I)I

    move-result v15

    .line 941
    add-int v19, p1, v10

    add-int/lit8 v19, v19, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_posStateMask:I

    move/from16 v20, v0

    and-int v19, v19, v20

    .line 942
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isMatch:[S

    move-object/from16 v20, v0

    shl-int/lit8 v21, v15, 0x4

    add-int v21, v21, v19

    aget-short v20, v20, v21

    invoke-static/range {v20 .. v20}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->GetPrice1(I)I

    move-result v20

    add-int v18, v18, v20

    .line 943
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isRep:[S

    move-object/from16 v20, v0

    aget-short v20, v20, v15

    invoke-static/range {v20 .. v20}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->GetPrice1(I)I

    move-result v20

    add-int v18, v18, v20

    .line 947
    add-int/lit8 v20, v10, 0x1

    add-int v20, v20, v6

    .line 948
    :goto_15
    add-int v21, v13, v20

    move/from16 v0, v21

    if-ge v5, v0, :cond_2c

    .line 949
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    move-object/from16 v21, v0

    add-int/lit8 v5, v5, 0x1

    aget-object v21, v21, v5

    const v22, 0xfffffff

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Price:I

    goto :goto_15

    .line 950
    :cond_2c
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v19

    invoke-virtual {v0, v1, v6, v15, v2}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->GetRepPrice(IIII)I

    move-result v6

    add-int v6, v6, v18

    .line 951
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    add-int v18, v13, v20

    aget-object v15, v15, v18

    .line 952
    iget v0, v15, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Price:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v6, v0, :cond_2d

    .line 954
    iput v6, v15, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Price:I

    .line 955
    add-int v6, v13, v10

    add-int/lit8 v6, v6, 0x1

    iput v6, v15, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->PosPrev:I

    .line 956
    const/4 v6, 0x0

    iput v6, v15, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->BackPrev:I

    .line 957
    const/4 v6, 0x1

    iput-boolean v6, v15, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Prev1IsChar:Z

    .line 958
    const/4 v6, 0x1

    iput-boolean v6, v15, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Prev2:Z

    .line 959
    iput v13, v15, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->PosPrev2:I

    .line 960
    iput v11, v15, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->BackPrev2:I

    .line 897
    :cond_2d
    add-int/lit8 v6, v11, 0x1

    move v11, v6

    goto/16 :goto_13

    .line 967
    :cond_2e
    if-le v8, v7, :cond_38

    .line 970
    const/4 v6, 0x0

    :goto_16
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchDistances:[I

    aget v8, v8, v6

    if-le v7, v8, :cond_2f

    add-int/lit8 v6, v6, 0x2

    goto :goto_16

    .line 971
    :cond_2f
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchDistances:[I

    aput v7, v8, v6

    .line 972
    add-int/lit8 v6, v6, 0x2

    move v8, v6

    .line 974
    :goto_17
    if-lt v7, v3, :cond_36

    .line 976
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isRep:[S

    aget-short v6, v6, v4

    invoke-static {v6}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->GetPrice0(I)I

    move-result v6

    add-int v9, v16, v6

    move v6, v5

    .line 977
    :goto_18
    add-int v5, v13, v7

    if-ge v6, v5, :cond_30

    .line 978
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    add-int/lit8 v6, v6, 0x1

    aget-object v5, v5, v6

    const v10, 0xfffffff

    iput v10, v5, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Price:I

    goto :goto_18

    .line 980
    :cond_30
    const/4 v5, 0x0

    .line 981
    :goto_19
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchDistances:[I

    aget v7, v7, v5

    if-le v3, v7, :cond_34

    .line 982
    add-int/lit8 v5, v5, 0x2

    goto :goto_19

    .line 1023
    :cond_31
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v16

    invoke-virtual {v0, v1, v11, v15, v2}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->GetRepPrice(IIII)I

    move-result v11

    add-int/2addr v10, v11

    .line 1024
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    add-int v15, v13, v17

    aget-object v11, v11, v15

    .line 1025
    iget v15, v11, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Price:I

    if-ge v10, v15, :cond_32

    .line 1027
    iput v10, v11, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Price:I

    .line 1028
    add-int v10, v13, v3

    add-int/lit8 v10, v10, 0x1

    iput v10, v11, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->PosPrev:I

    .line 1029
    const/4 v10, 0x0

    iput v10, v11, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->BackPrev:I

    .line 1030
    const/4 v10, 0x1

    iput-boolean v10, v11, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Prev1IsChar:Z

    .line 1031
    const/4 v10, 0x1

    iput-boolean v10, v11, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Prev2:Z

    .line 1032
    iput v13, v11, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->PosPrev2:I

    .line 1033
    add-int/lit8 v7, v7, 0x4

    iput v7, v11, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->BackPrev2:I

    .line 1037
    :cond_32
    add-int/lit8 v5, v5, 0x2

    .line 1038
    if-eq v5, v8, :cond_37

    .line 1039
    :cond_33
    add-int/lit8 v3, v3, 0x1

    .line 986
    :cond_34
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchDistances:[I

    add-int/lit8 v10, v5, 0x1

    aget v7, v7, v10

    .line 987
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v3, v14}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->GetPosLenPrice(III)I

    move-result v10

    add-int/2addr v10, v9

    .line 988
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    add-int v15, v13, v3

    aget-object v11, v11, v15

    .line 989
    iget v15, v11, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Price:I

    if-ge v10, v15, :cond_35

    .line 991
    iput v10, v11, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Price:I

    .line 992
    iput v13, v11, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->PosPrev:I

    .line 993
    add-int/lit8 v15, v7, 0x4

    iput v15, v11, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->BackPrev:I

    .line 994
    const/4 v15, 0x0

    iput-boolean v15, v11, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Prev1IsChar:Z

    .line 997
    :cond_35
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchDistances:[I

    aget v11, v11, v5

    if-ne v3, v11, :cond_33

    .line 999
    if-ge v3, v12, :cond_32

    .line 1001
    add-int/lit8 v11, v12, -0x1

    sub-int/2addr v11, v3

    move-object/from16 v0, p0

    iget v15, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_numFastBytes:I

    invoke-static {v11, v15}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 1002
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchFinder:Lcom/badlogic/gdx/utils/compression/lz/BinTree;

    invoke-virtual {v15, v3, v7, v11}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->GetMatchLen(III)I

    move-result v11

    .line 1003
    const/4 v15, 0x2

    if-lt v11, v15, :cond_32

    .line 1005
    invoke-static {v4}, Lcom/badlogic/gdx/utils/compression/lzma/Base;->StateUpdateMatch(I)I

    move-result v15

    .line 1007
    add-int v16, p1, v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_posStateMask:I

    move/from16 v17, v0

    and-int v16, v16, v17

    .line 1008
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isMatch:[S

    move-object/from16 v17, v0

    shl-int/lit8 v18, v15, 0x4

    add-int v16, v16, v18

    aget-short v16, v17, v16

    invoke-static/range {v16 .. v16}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->GetPrice0(I)I

    move-result v16

    add-int v10, v10, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_literalEncoder:Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder;

    move-object/from16 v16, v0

    add-int v17, p1, v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchFinder:Lcom/badlogic/gdx/utils/compression/lz/BinTree;

    move-object/from16 v18, v0

    add-int/lit8 v19, v3, -0x1

    add-int/lit8 v19, v19, -0x1

    invoke-virtual/range {v18 .. v19}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->GetIndexByte(I)B

    move-result v18

    invoke-virtual/range {v16 .. v18}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder;->GetSubCoder(IB)Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder$Encoder2;

    move-result-object v16

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchFinder:Lcom/badlogic/gdx/utils/compression/lz/BinTree;

    move-object/from16 v18, v0

    add-int/lit8 v19, v7, 0x1

    sub-int v19, v3, v19

    add-int/lit8 v19, v19, -0x1

    invoke-virtual/range {v18 .. v19}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->GetIndexByte(I)B

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchFinder:Lcom/badlogic/gdx/utils/compression/lz/BinTree;

    move-object/from16 v19, v0

    add-int/lit8 v20, v3, -0x1

    invoke-virtual/range {v19 .. v20}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->GetIndexByte(I)B

    move-result v19

    invoke-virtual/range {v16 .. v19}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder$Encoder2;->GetPrice(ZBB)I

    move-result v16

    add-int v10, v10, v16

    .line 1015
    invoke-static {v15}, Lcom/badlogic/gdx/utils/compression/lzma/Base;->StateUpdateChar(I)I

    move-result v15

    .line 1016
    add-int v16, p1, v3

    add-int/lit8 v16, v16, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_posStateMask:I

    move/from16 v17, v0

    and-int v16, v16, v17

    .line 1017
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isMatch:[S

    move-object/from16 v17, v0

    shl-int/lit8 v18, v15, 0x4

    add-int v18, v18, v16

    aget-short v17, v17, v18

    invoke-static/range {v17 .. v17}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->GetPrice1(I)I

    move-result v17

    add-int v10, v10, v17

    .line 1018
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isRep:[S

    move-object/from16 v17, v0

    aget-short v17, v17, v15

    invoke-static/range {v17 .. v17}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->GetPrice1(I)I

    move-result v17

    add-int v10, v10, v17

    .line 1020
    add-int/lit8 v17, v3, 0x1

    add-int v17, v17, v11

    .line 1021
    :goto_1a
    add-int v18, v13, v17

    move/from16 v0, v18

    if-ge v6, v0, :cond_31

    .line 1022
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimum:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;

    move-object/from16 v18, v0

    add-int/lit8 v6, v6, 0x1

    aget-object v18, v18, v6

    const v19, 0xfffffff

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$Optimal;->Price:I

    goto :goto_1a

    :cond_36
    move v6, v5

    :cond_37
    move v3, v13

    .line 1043
    goto/16 :goto_a

    :cond_38
    move v7, v8

    move v8, v9

    goto/16 :goto_17

    :cond_39
    move v3, v6

    goto/16 :goto_12

    :cond_3a
    move v7, v12

    goto/16 :goto_f

    :cond_3b
    move v3, v13

    goto/16 :goto_a

    :cond_3c
    move v4, v6

    goto/16 :goto_5
.end method

.method GetPosLenPrice(III)I
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 508
    invoke-static {p2}, Lcom/badlogic/gdx/utils/compression/lzma/Base;->GetLenToPosState(I)I

    move-result v0

    .line 509
    const/16 v1, 0x80

    if-ge p1, v1, :cond_0

    .line 510
    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_distancesPrices:[I

    mul-int/lit16 v0, v0, 0x80

    add-int/2addr v0, p1

    aget v0, v1, v0

    .line 514
    :goto_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_lenEncoder:Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenPriceTableEncoder;

    add-int/lit8 v2, p2, -0x2

    invoke-virtual {v1, v2, p3}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenPriceTableEncoder;->GetPrice(II)I

    move-result v1

    add-int/2addr v0, v1

    return v0

    .line 512
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_posSlotPrices:[I

    shl-int/lit8 v0, v0, 0x6

    invoke-static {p1}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->GetPosSlot2(I)I

    move-result v2

    add-int/2addr v0, v2

    aget v0, v1, v0

    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_alignPrices:[I

    and-int/lit8 v2, p1, 0xf

    aget v1, v1, v2

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method GetPureRepPrice(III)I
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 480
    if-nez p1, :cond_0

    .line 482
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isRepG0:[S

    aget-short v0, v0, p2

    invoke-static {v0}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->GetPrice0(I)I

    move-result v0

    .line 483
    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isRep0Long:[S

    shl-int/lit8 v2, p2, 0x4

    add-int/2addr v2, p3

    aget-short v1, v1, v2

    invoke-static {v1}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->GetPrice1(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 496
    :goto_0
    return v0

    .line 487
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isRepG0:[S

    aget-short v0, v0, p2

    invoke-static {v0}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->GetPrice1(I)I

    move-result v0

    .line 488
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 489
    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isRepG1:[S

    aget-short v1, v1, p2

    invoke-static {v1}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->GetPrice0(I)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    .line 492
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isRepG1:[S

    aget-short v1, v1, p2

    invoke-static {v1}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->GetPrice1(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 493
    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isRepG2:[S

    aget-short v1, v1, p2

    add-int/lit8 v2, p1, -0x2

    invoke-static {v1, v2}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->GetPrice(II)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method GetRepLen1Price(II)I
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 473
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isRepG0:[S

    aget-short v0, v0, p1

    invoke-static {v0}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->GetPrice0(I)I

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isRep0Long:[S

    shl-int/lit8 v2, p1, 0x4

    add-int/2addr v2, p2

    aget-short v1, v1, v2

    invoke-static {v1}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->GetPrice0(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method GetRepPrice(IIII)I
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 501
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_repMatchLenEncoder:Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenPriceTableEncoder;

    add-int/lit8 v1, p2, -0x2

    invoke-virtual {v0, v1, p4}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenPriceTableEncoder;->GetPrice(II)I

    move-result v0

    .line 502
    invoke-virtual {p0, p1, p3, p4}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->GetPureRepPrice(III)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method Init()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 413
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->BaseInit()V

    .line 414
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_rangeEncoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->Init()V

    .line 416
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isMatch:[S

    invoke-static {v0}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->InitBitModels([S)V

    .line 417
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isRep0Long:[S

    invoke-static {v0}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->InitBitModels([S)V

    .line 418
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isRep:[S

    invoke-static {v0}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->InitBitModels([S)V

    .line 419
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isRepG0:[S

    invoke-static {v0}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->InitBitModels([S)V

    .line 420
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isRepG1:[S

    invoke-static {v0}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->InitBitModels([S)V

    .line 421
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isRepG2:[S

    invoke-static {v0}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->InitBitModels([S)V

    .line 422
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_posEncoders:[S

    invoke-static {v0}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->InitBitModels([S)V

    .line 430
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_literalEncoder:Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder;->Init()V

    move v0, v1

    .line 431
    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    .line 432
    iget-object v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_posSlotEncoder:[Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;->Init()V

    .line 431
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 436
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_lenEncoder:Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenPriceTableEncoder;

    iget v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_posStateBits:I

    shl-int v2, v3, v2

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenPriceTableEncoder;->Init(I)V

    .line 437
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_repMatchLenEncoder:Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenPriceTableEncoder;

    iget v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_posStateBits:I

    shl-int v2, v3, v2

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenPriceTableEncoder;->Init(I)V

    .line 439
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_posAlignEncoder:Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;->Init()V

    .line 441
    iput-boolean v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_longestMatchWasFound:Z

    .line 442
    iput v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimumEndIndex:I

    .line 443
    iput v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_optimumCurrentIndex:I

    .line 444
    iput v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_additionalOffset:I

    .line 445
    return-void
.end method

.method MovePos(I)V
    .locals 1
    .parameter

    .prologue
    .line 464
    if-lez p1, :cond_0

    .line 466
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchFinder:Lcom/badlogic/gdx/utils/compression/lz/BinTree;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->Skip(I)V

    .line 467
    iget v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_additionalOffset:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_additionalOffset:I

    .line 469
    :cond_0
    return-void
.end method

.method ReadMatchDistances()I
    .locals 5

    .prologue
    .line 449
    const/4 v0, 0x0

    .line 450
    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchFinder:Lcom/badlogic/gdx/utils/compression/lz/BinTree;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchDistances:[I

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->GetMatches([I)I

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_numDistancePairs:I

    .line 451
    iget v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_numDistancePairs:I

    if-lez v1, :cond_0

    .line 453
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchDistances:[I

    iget v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_numDistancePairs:I

    add-int/lit8 v1, v1, -0x2

    aget v0, v0, v1

    .line 454
    iget v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_numFastBytes:I

    if-ne v0, v1, :cond_0

    .line 455
    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchFinder:Lcom/badlogic/gdx/utils/compression/lz/BinTree;

    add-int/lit8 v2, v0, -0x1

    iget-object v3, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchDistances:[I

    iget v4, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_numDistancePairs:I

    add-int/lit8 v4, v4, -0x1

    aget v3, v3, v4

    rsub-int v4, v0, 0x111

    invoke-virtual {v1, v2, v3, v4}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->GetMatchLen(III)I

    move-result v1

    add-int/2addr v0, v1

    .line 458
    :cond_0
    iget v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_additionalOffset:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_additionalOffset:I

    .line 459
    return v0
.end method

.method ReleaseMFStream()V
    .locals 1

    .prologue
    .line 1247
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchFinder:Lcom/badlogic/gdx/utils/compression/lz/BinTree;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_needReleaseMFStream:Z

    if-eqz v0, :cond_0

    .line 1249
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchFinder:Lcom/badlogic/gdx/utils/compression/lz/BinTree;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->ReleaseStream()V

    .line 1250
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_needReleaseMFStream:Z

    .line 1252
    :cond_0
    return-void
.end method

.method ReleaseOutStream()V
    .locals 1

    .prologue
    .line 1257
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_rangeEncoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->ReleaseStream()V

    return-void
.end method

.method ReleaseStreams()V
    .locals 0

    .prologue
    .line 1261
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->ReleaseMFStream()V

    .line 1262
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->ReleaseOutStream()V

    .line 1263
    return-void
.end method

.method public SetAlgorithm(I)Z
    .locals 1
    .parameter

    .prologue
    .line 1376
    const/4 v0, 0x1

    return v0
.end method

.method public SetDictionarySize(I)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1381
    if-lez p1, :cond_0

    const/high16 v2, 0x2000

    if-le p1, v2, :cond_1

    :cond_0
    move v0, v1

    .line 1388
    :goto_0
    return v0

    .line 1384
    :cond_1
    iput p1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_dictionarySize:I

    .line 1386
    :goto_1
    shl-int v2, v0, v1

    if-le p1, v2, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1387
    :cond_2
    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_distTableSize:I

    goto :goto_0
.end method

.method public SetEndMarkerMode(Z)V
    .locals 0
    .parameter

    .prologue
    .line 1429
    iput-boolean p1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_writeEndMark:Z

    .line 1430
    return-void
.end method

.method public SetLcLpPb(III)Z
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x4

    const/4 v0, 0x1

    .line 1415
    if-ltz p2, :cond_0

    if-gt p2, v2, :cond_0

    if-ltz p1, :cond_0

    const/16 v1, 0x8

    if-gt p1, v1, :cond_0

    if-ltz p3, :cond_0

    if-le p3, v2, :cond_1

    .line 1419
    :cond_0
    const/4 v0, 0x0

    .line 1424
    :goto_0
    return v0

    .line 1420
    :cond_1
    iput p2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_numLiteralPosStateBits:I

    .line 1421
    iput p1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_numLiteralContextBits:I

    .line 1422
    iput p3, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_posStateBits:I

    .line 1423
    iget v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_posStateBits:I

    shl-int v1, v0, v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_posStateMask:I

    goto :goto_0
.end method

.method public SetMatchFinder(I)Z
    .locals 2
    .parameter

    .prologue
    .line 1401
    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-le p1, v0, :cond_1

    .line 1402
    :cond_0
    const/4 v0, 0x0

    .line 1410
    :goto_0
    return v0

    .line 1403
    :cond_1
    iget v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchFinderType:I

    .line 1404
    iput p1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchFinderType:I

    .line 1405
    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchFinder:Lcom/badlogic/gdx/utils/compression/lz/BinTree;

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchFinderType:I

    if-eq v0, v1, :cond_2

    .line 1407
    const/4 v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_dictionarySizePrev:I

    .line 1408
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_matchFinder:Lcom/badlogic/gdx/utils/compression/lz/BinTree;

    .line 1410
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public SetNumFastBytes(I)Z
    .locals 1
    .parameter

    .prologue
    .line 1393
    const/4 v0, 0x5

    if-lt p1, v0, :cond_0

    const/16 v0, 0x111

    if-le p1, v0, :cond_1

    .line 1394
    :cond_0
    const/4 v0, 0x0

    .line 1396
    :goto_0
    return v0

    .line 1395
    :cond_1
    iput p1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_numFastBytes:I

    .line 1396
    const/4 v0, 0x1

    goto :goto_0
.end method

.method SetOutStream(Ljava/io/OutputStream;)V
    .locals 1
    .parameter

    .prologue
    .line 1255
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_rangeEncoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->SetStream(Ljava/io/OutputStream;)V

    return-void
.end method

.method SetStreams(Ljava/io/InputStream;Ljava/io/OutputStream;JJ)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 1268
    iput-object p1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_inStream:Ljava/io/InputStream;

    .line 1269
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_finished:Z

    .line 1270
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->Create()V

    .line 1271
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->SetOutStream(Ljava/io/OutputStream;)V

    .line 1272
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->Init()V

    .line 1276
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->FillDistancesPrices()V

    .line 1277
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->FillAlignPrices()V

    .line 1280
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_lenEncoder:Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenPriceTableEncoder;

    iget v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_numFastBytes:I

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenPriceTableEncoder;->SetTableSize(I)V

    .line 1281
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_lenEncoder:Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenPriceTableEncoder;

    iget v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_posStateBits:I

    shl-int v1, v2, v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenPriceTableEncoder;->UpdateTables(I)V

    .line 1282
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_repMatchLenEncoder:Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenPriceTableEncoder;

    iget v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_numFastBytes:I

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenPriceTableEncoder;->SetTableSize(I)V

    .line 1283
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_repMatchLenEncoder:Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenPriceTableEncoder;

    iget v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_posStateBits:I

    shl-int v1, v2, v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenPriceTableEncoder;->UpdateTables(I)V

    .line 1285
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->nowPos64:J

    .line 1286
    return-void
.end method

.method SetWriteEndMarkerMode(Z)V
    .locals 0
    .parameter

    .prologue
    .line 408
    iput-boolean p1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_writeEndMark:Z

    .line 409
    return-void
.end method

.method public WriteCoderProperties(Ljava/io/OutputStream;)V
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1321
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->properties:[B

    iget v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_posStateBits:I

    mul-int/lit8 v2, v2, 0x5

    iget v3, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_numLiteralPosStateBits:I

    add-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x9

    iget v3, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_numLiteralContextBits:I

    add-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    move v0, v1

    .line 1322
    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    .line 1323
    iget-object v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->properties:[B

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_dictionarySize:I

    mul-int/lit8 v5, v0, 0x8

    shr-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 1322
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1324
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->properties:[B

    const/4 v2, 0x5

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 1325
    return-void
.end method

.method WriteEndMarker(I)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 1054
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_writeEndMark:Z

    if-nez v0, :cond_0

    .line 1069
    :goto_0
    return-void

    .line 1057
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_rangeEncoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isMatch:[S

    iget v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_state:I

    shl-int/lit8 v2, v2, 0x4

    add-int/2addr v2, p1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->Encode([SII)V

    .line 1058
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_rangeEncoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_isRep:[S

    iget v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_state:I

    invoke-virtual {v0, v1, v2, v4}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->Encode([SII)V

    .line 1059
    iget v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_state:I

    invoke-static {v0}, Lcom/badlogic/gdx/utils/compression/lzma/Base;->StateUpdateMatch(I)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_state:I

    .line 1060
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_lenEncoder:Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenPriceTableEncoder;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_rangeEncoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;

    invoke-virtual {v0, v1, v4, p1}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenPriceTableEncoder;->Encode(Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;II)V

    .line 1062
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/badlogic/gdx/utils/compression/lzma/Base;->GetLenToPosState(I)I

    move-result v0

    .line 1064
    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_posSlotEncoder:[Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;

    aget-object v0, v1, v0

    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_rangeEncoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;

    const/16 v2, 0x3f

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;->Encode(Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;I)V

    .line 1065
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_rangeEncoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;

    const v1, 0x3ffffff

    const/16 v2, 0x1a

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->EncodeDirectBits(II)V

    .line 1068
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_posAlignEncoder:Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->_rangeEncoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;->ReverseEncode(Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;I)V

    goto :goto_0
.end method

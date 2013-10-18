.class public Lcom/badlogic/gdx/utils/XmlReader;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final _xml_actions:[B = null

.field private static final _xml_index_offsets:[S = null

.field private static final _xml_indicies:[B = null

.field private static final _xml_key_offsets:[B = null

.field private static final _xml_range_lengths:[B = null

.field private static final _xml_single_lengths:[B = null

.field private static final _xml_trans_actions:[B = null

.field private static final _xml_trans_keys:[C = null

.field private static final _xml_trans_targs:[B = null

.field static final xml_en_elementBody:I = 0xf

.field static final xml_en_main:I = 0x1

.field static final xml_error:I = 0x0

.field static final xml_first_final:I = 0x22

.field static final xml_start:I = 0x1


# instance fields
.field private current:Lcom/badlogic/gdx/utils/XmlReader$Element;

.field private final elements:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/utils/XmlReader$Element;",
            ">;"
        }
    .end annotation
.end field

.field private root:Lcom/badlogic/gdx/utils/XmlReader$Element;

.field private final textBuffer:Lcom/badlogic/gdx/utils/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 329
    invoke-static {}, Lcom/badlogic/gdx/utils/XmlReader;->init__xml_actions_0()[B

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/XmlReader;->_xml_actions:[B

    .line 336
    invoke-static {}, Lcom/badlogic/gdx/utils/XmlReader;->init__xml_key_offsets_0()[B

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/XmlReader;->_xml_key_offsets:[B

    .line 345
    invoke-static {}, Lcom/badlogic/gdx/utils/XmlReader;->init__xml_trans_keys_0()[C

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/XmlReader;->_xml_trans_keys:[C

    .line 352
    invoke-static {}, Lcom/badlogic/gdx/utils/XmlReader;->init__xml_single_lengths_0()[B

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/XmlReader;->_xml_single_lengths:[B

    .line 359
    invoke-static {}, Lcom/badlogic/gdx/utils/XmlReader;->init__xml_range_lengths_0()[B

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/XmlReader;->_xml_range_lengths:[B

    .line 366
    invoke-static {}, Lcom/badlogic/gdx/utils/XmlReader;->init__xml_index_offsets_0()[S

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/XmlReader;->_xml_index_offsets:[S

    .line 376
    invoke-static {}, Lcom/badlogic/gdx/utils/XmlReader;->init__xml_indicies_0()[B

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/XmlReader;->_xml_indicies:[B

    .line 384
    invoke-static {}, Lcom/badlogic/gdx/utils/XmlReader;->init__xml_trans_targs_0()[B

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/XmlReader;->_xml_trans_targs:[B

    .line 391
    invoke-static {}, Lcom/badlogic/gdx/utils/XmlReader;->init__xml_trans_actions_0()[B

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/XmlReader;->_xml_trans_actions:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/XmlReader;->elements:Lcom/badlogic/gdx/utils/Array;

    .line 40
    new-instance v0, Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/XmlReader;->textBuffer:Lcom/badlogic/gdx/utils/StringBuilder;

    .line 433
    return-void
.end method

.method private static init__xml_actions_0()[B
    .locals 1

    .prologue
    .line 326
    const/16 v0, 0x1a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 0x1
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x2t
        0x1t
        0x3t
        0x1t
        0x4t
        0x1t
        0x5t
        0x1t
        0x6t
        0x1t
        0x7t
        0x2t
        0x0t
        0x6t
        0x2t
        0x1t
        0x4t
        0x2t
        0x2t
        0x4t
    .end array-data
.end method

.method private static init__xml_index_offsets_0()[S
    .locals 1

    .prologue
    .line 362
    const/16 v0, 0x24

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 0x2
        0x0t 0x0t
        0x0t 0x0t
        0x4t 0x0t
        0x9t 0x0t
        0xet 0x0t
        0x14t 0x0t
        0x1at 0x0t
        0x1et 0x0t
        0x23t 0x0t
        0x25t 0x0t
        0x27t 0x0t
        0x2ct 0x0t
        0x30t 0x0t
        0x34t 0x0t
        0x36t 0x0t
        0x38t 0x0t
        0x3ct 0x0t
        0x3et 0x0t
        0x43t 0x0t
        0x48t 0x0t
        0x4et 0x0t
        0x54t 0x0t
        0x58t 0x0t
        0x5dt 0x0t
        0x5ft 0x0t
        0x61t 0x0t
        0x66t 0x0t
        0x6at 0x0t
        0x6et 0x0t
        0x70t 0x0t
        0x74t 0x0t
        0x76t 0x0t
        0x78t 0x0t
        0x7at 0x0t
        0x7ct 0x0t
        0x7ft 0x0t
    .end array-data
.end method

.method private static init__xml_indicies_0()[B
    .locals 1

    .prologue
    .line 369
    const/16 v0, 0x81

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 0x1
        0x0t
        0x2t
        0x0t
        0x1t
        0x2t
        0x1t
        0x1t
        0x2t
        0x3t
        0x5t
        0x6t
        0x7t
        0x5t
        0x4t
        0x9t
        0xat
        0x1t
        0xbt
        0x9t
        0x8t
        0xdt
        0x1t
        0xet
        0x1t
        0xdt
        0xct
        0xft
        0x10t
        0xft
        0x1t
        0x10t
        0x11t
        0x12t
        0x10t
        0x1t
        0x14t
        0x13t
        0x16t
        0x15t
        0x9t
        0xat
        0xbt
        0x9t
        0x1t
        0x17t
        0x18t
        0x17t
        0x1t
        0x19t
        0xbt
        0x19t
        0x1t
        0x14t
        0x1at
        0x16t
        0x1bt
        0x1dt
        0x1et
        0x1dt
        0x1ct
        0x20t
        0x1ft
        0x1et
        0x22t
        0x1t
        0x1et
        0x21t
        0x24t
        0x25t
        0x26t
        0x24t
        0x23t
        0x28t
        0x29t
        0x1t
        0x2at
        0x28t
        0x27t
        0x2ct
        0x1t
        0x2dt
        0x1t
        0x2ct
        0x2bt
        0x2et
        0x2ft
        0x2et
        0x1t
        0x2ft
        0x30t
        0x31t
        0x2ft
        0x1t
        0x33t
        0x32t
        0x35t
        0x34t
        0x28t
        0x29t
        0x2at
        0x28t
        0x1t
        0x36t
        0x37t
        0x36t
        0x1t
        0x38t
        0x2at
        0x38t
        0x1t
        0x39t
        0x1t
        0x39t
        0x22t
        0x39t
        0x1t
        0x1t
        0x3at
        0x3bt
        0x3at
        0x33t
        0x3ct
        0x35t
        0x3dt
        0x3et
        0x3et
        0x1t
        0x1t
        0x0t
    .end array-data
.end method

.method private static init__xml_key_offsets_0()[B
    .locals 1

    .prologue
    .line 332
    const/16 v0, 0x24

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 0x1
        0x0t
        0x0t
        0x4t
        0x9t
        0xet
        0x14t
        0x1at
        0x1et
        0x23t
        0x24t
        0x25t
        0x2at
        0x2et
        0x32t
        0x33t
        0x34t
        0x38t
        0x39t
        0x3et
        0x43t
        0x49t
        0x4ft
        0x53t
        0x58t
        0x59t
        0x5at
        0x5ft
        0x63t
        0x67t
        0x68t
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x73t
    .end array-data
.end method

.method private static init__xml_range_lengths_0()[B
    .locals 1

    .prologue
    .line 355
    const/16 v0, 0x24

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 0x1
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
    .end array-data
.end method

.method private static init__xml_single_lengths_0()[B
    .locals 1

    .prologue
    .line 348
    const/16 v0, 0x24

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 0x1
        0x0t
        0x2t
        0x3t
        0x3t
        0x4t
        0x4t
        0x2t
        0x3t
        0x1t
        0x1t
        0x3t
        0x2t
        0x2t
        0x1t
        0x1t
        0x2t
        0x1t
        0x3t
        0x3t
        0x4t
        0x4t
        0x2t
        0x3t
        0x1t
        0x1t
        0x3t
        0x2t
        0x2t
        0x1t
        0x2t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
    .end array-data
.end method

.method private static init__xml_trans_actions_0()[B
    .locals 1

    .prologue
    .line 387
    const/16 v0, 0x3f

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x3t
        0x3t
        0x14t
        0x1t
        0x0t
        0x0t
        0x9t
        0x0t
        0xbt
        0xbt
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x11t
        0x0t
        0xdt
        0x5t
        0x17t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0xft
        0x1t
        0x0t
        0x0t
        0x3t
        0x3t
        0x14t
        0x1t
        0x0t
        0x0t
        0x9t
        0x0t
        0xbt
        0xbt
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x11t
        0x0t
        0xdt
        0x5t
        0x17t
        0x0t
        0x0t
        0x0t
        0x7t
        0x1t
        0x0t
        0x0t
    .end array-data
.end method

.method private static init__xml_trans_keys_0()[C
    .locals 1

    .prologue
    .line 339
    const/16 v0, 0x74

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 0x2
        0x20t 0x0t
        0x3ct 0x0t
        0x9t 0x0t
        0xdt 0x0t
        0x20t 0x0t
        0x2ft 0x0t
        0x3et 0x0t
        0x9t 0x0t
        0xdt 0x0t
        0x20t 0x0t
        0x2ft 0x0t
        0x3et 0x0t
        0x9t 0x0t
        0xdt 0x0t
        0x20t 0x0t
        0x2ft 0x0t
        0x3dt 0x0t
        0x3et 0x0t
        0x9t 0x0t
        0xdt 0x0t
        0x20t 0x0t
        0x2ft 0x0t
        0x3dt 0x0t
        0x3et 0x0t
        0x9t 0x0t
        0xdt 0x0t
        0x20t 0x0t
        0x3dt 0x0t
        0x9t 0x0t
        0xdt 0x0t
        0x20t 0x0t
        0x22t 0x0t
        0x27t 0x0t
        0x9t 0x0t
        0xdt 0x0t
        0x22t 0x0t
        0x22t 0x0t
        0x20t 0x0t
        0x2ft 0x0t
        0x3et 0x0t
        0x9t 0x0t
        0xdt 0x0t
        0x20t 0x0t
        0x3et 0x0t
        0x9t 0x0t
        0xdt 0x0t
        0x20t 0x0t
        0x3et 0x0t
        0x9t 0x0t
        0xdt 0x0t
        0x27t 0x0t
        0x27t 0x0t
        0x20t 0x0t
        0x3ct 0x0t
        0x9t 0x0t
        0xdt 0x0t
        0x3ct 0x0t
        0x20t 0x0t
        0x2ft 0x0t
        0x3et 0x0t
        0x9t 0x0t
        0xdt 0x0t
        0x20t 0x0t
        0x2ft 0x0t
        0x3et 0x0t
        0x9t 0x0t
        0xdt 0x0t
        0x20t 0x0t
        0x2ft 0x0t
        0x3dt 0x0t
        0x3et 0x0t
        0x9t 0x0t
        0xdt 0x0t
        0x20t 0x0t
        0x2ft 0x0t
        0x3dt 0x0t
        0x3et 0x0t
        0x9t 0x0t
        0xdt 0x0t
        0x20t 0x0t
        0x3dt 0x0t
        0x9t 0x0t
        0xdt 0x0t
        0x20t 0x0t
        0x22t 0x0t
        0x27t 0x0t
        0x9t 0x0t
        0xdt 0x0t
        0x22t 0x0t
        0x22t 0x0t
        0x20t 0x0t
        0x2ft 0x0t
        0x3et 0x0t
        0x9t 0x0t
        0xdt 0x0t
        0x20t 0x0t
        0x3et 0x0t
        0x9t 0x0t
        0xdt 0x0t
        0x20t 0x0t
        0x3et 0x0t
        0x9t 0x0t
        0xdt 0x0t
        0x3ct 0x0t
        0x20t 0x0t
        0x2ft 0x0t
        0x9t 0x0t
        0xdt 0x0t
        0x3et 0x0t
        0x3et 0x0t
        0x27t 0x0t
        0x27t 0x0t
        0x20t 0x0t
        0x9t 0x0t
        0xdt 0x0t
        0x0t 0x0t
    .end array-data
.end method

.method private static init__xml_trans_targs_0()[B
    .locals 1

    .prologue
    .line 379
    const/16 v0, 0x3f

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 0x1
        0x1t
        0x0t
        0x2t
        0x3t
        0x3t
        0x4t
        0xbt
        0x22t
        0x5t
        0x4t
        0xbt
        0x22t
        0x5t
        0x6t
        0x7t
        0x6t
        0x7t
        0x8t
        0xdt
        0x9t
        0xat
        0x9t
        0xat
        0xct
        0x22t
        0xct
        0xet
        0xet
        0x10t
        0xft
        0x11t
        0x10t
        0x11t
        0x12t
        0x1et
        0x12t
        0x13t
        0x1at
        0x1ct
        0x14t
        0x13t
        0x1at
        0x1ct
        0x14t
        0x15t
        0x16t
        0x15t
        0x16t
        0x17t
        0x20t
        0x18t
        0x19t
        0x18t
        0x19t
        0x1bt
        0x1ct
        0x1bt
        0x1dt
        0x1ft
        0x23t
        0x21t
        0x21t
        0x22t
    .end array-data
.end method


# virtual methods
.method protected attribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 411
    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlReader;->current:Lcom/badlogic/gdx/utils/XmlReader$Element;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    return-void
.end method

.method protected close()V
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlReader;->elements:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/XmlReader$Element;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/XmlReader;->root:Lcom/badlogic/gdx/utils/XmlReader$Element;

    .line 430
    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlReader;->elements:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlReader;->elements:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/XmlReader$Element;

    :goto_0
    iput-object v0, p0, Lcom/badlogic/gdx/utils/XmlReader;->current:Lcom/badlogic/gdx/utils/XmlReader$Element;

    .line 431
    return-void

    .line 430
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected entity(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 415
    const-string/jumbo v0, "lt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "<"

    .line 420
    :goto_0
    return-object v0

    .line 416
    :cond_0
    const-string/jumbo v0, "gt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, ">"

    goto :goto_0

    .line 417
    :cond_1
    const-string/jumbo v0, "amp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "&"

    goto :goto_0

    .line 418
    :cond_2
    const-string/jumbo v0, "apos"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "\'"

    goto :goto_0

    .line 419
    :cond_3
    const-string/jumbo v0, "quot"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "\""

    goto :goto_0

    .line 420
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected open(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 403
    new-instance v0, Lcom/badlogic/gdx/utils/XmlReader$Element;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/XmlReader;->current:Lcom/badlogic/gdx/utils/XmlReader$Element;

    invoke-direct {v0, p1, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    .line 404
    iget-object v1, p0, Lcom/badlogic/gdx/utils/XmlReader;->current:Lcom/badlogic/gdx/utils/XmlReader$Element;

    .line 405
    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->addChild(Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    .line 406
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/XmlReader;->elements:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 407
    iput-object v0, p0, Lcom/badlogic/gdx/utils/XmlReader;->current:Lcom/badlogic/gdx/utils/XmlReader$Element;

    .line 408
    return-void
.end method

.method public parse(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/utils/XmlReader$Element;
    .locals 4
    .parameter

    .prologue
    .line 69
    :try_start_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/files/FileHandle;->read()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/XmlReader;->parse(Ljava/io/InputStream;)Lcom/badlogic/gdx/utils/XmlReader$Element;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 70
    :catch_0
    move-exception v0

    .line 71
    new-instance v1, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Error parsing file: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public parse(Ljava/io/InputStream;)Lcom/badlogic/gdx/utils/XmlReader$Element;
    .locals 2
    .parameter

    .prologue
    .line 64
    new-instance v0, Ljava/io/InputStreamReader;

    const-string/jumbo v1, "ISO-8859-1"

    invoke-direct {v0, p1, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/XmlReader;->parse(Ljava/io/Reader;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v0

    return-object v0
.end method

.method public parse(Ljava/io/Reader;)Lcom/badlogic/gdx/utils/XmlReader$Element;
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 48
    const/16 v0, 0x400

    new-array v0, v0, [C

    move-object v2, v0

    move v0, v1

    .line 51
    :goto_0
    array-length v3, v2

    sub-int/2addr v3, v0

    invoke-virtual {p1, v2, v0, v3}, Ljava/io/Reader;->read([CII)I

    move-result v3

    .line 52
    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 53
    if-nez v3, :cond_0

    .line 54
    array-length v3, v2

    mul-int/lit8 v3, v3, 0x2

    new-array v3, v3, [C

    .line 55
    array-length v4, v2

    invoke-static {v2, v1, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v2, v3

    .line 57
    goto :goto_0

    .line 58
    :cond_0
    add-int/2addr v0, v3

    .line 59
    goto :goto_0

    .line 60
    :cond_1
    invoke-virtual {p0, v2, v1, v0}, Lcom/badlogic/gdx/utils/XmlReader;->parse([CII)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v0

    return-object v0
.end method

.method public parse(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;
    .locals 3
    .parameter

    .prologue
    .line 43
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 44
    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/utils/XmlReader;->parse([CII)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v0

    return-object v0
.end method

.method public parse([CII)Lcom/badlogic/gdx/utils/XmlReader$Element;
    .locals 15
    .parameter
    .parameter
    .parameter

    .prologue
    .line 76
    .line 78
    const/4 v6, 0x0

    .line 79
    const/4 v7, 0x0

    .line 80
    const/4 v4, 0x0

    .line 84
    const/4 v5, 0x1

    .line 94
    const/4 v1, 0x0

    move v2, v1

    move/from16 v1, p2

    move-object v14, v7

    move v7, v5

    move-object v5, v14

    .line 98
    :goto_0
    packed-switch v2, :pswitch_data_0

    :cond_0
    move v3, v1

    .line 302
    move/from16 v0, p3

    if-ge v3, v0, :cond_1a

    .line 309
    const/4 v2, 0x1

    .line 310
    const/4 v1, 0x0

    move v14, v1

    move v1, v2

    move v2, v14

    :goto_1
    if-ge v2, v3, :cond_19

    .line 311
    aget-char v4, p1, v2

    const/16 v5, 0xa

    if-ne v4, v5, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 310
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 100
    :pswitch_0
    move/from16 v0, p3

    if-ne v1, v0, :cond_2

    .line 101
    const/4 v2, 0x4

    .line 102
    goto :goto_0

    .line 104
    :cond_2
    if-nez v7, :cond_3

    .line 105
    const/4 v2, 0x5

    .line 106
    goto :goto_0

    .line 111
    :cond_3
    :pswitch_1
    sget-object v2, Lcom/badlogic/gdx/utils/XmlReader;->_xml_key_offsets:[B

    aget-byte v2, v2, v7

    .line 112
    sget-object v3, Lcom/badlogic/gdx/utils/XmlReader;->_xml_index_offsets:[S

    aget-short v3, v3, v7

    .line 113
    sget-object v8, Lcom/badlogic/gdx/utils/XmlReader;->_xml_single_lengths:[B

    aget-byte v10, v8, v7

    .line 114
    if-lez v10, :cond_9

    .line 117
    add-int v8, v2, v10

    add-int/lit8 v8, v8, -0x1

    move v9, v2

    .line 119
    :goto_2
    if-lt v8, v9, :cond_8

    .line 121
    sub-int v11, v8, v9

    shr-int/lit8 v11, v11, 0x1

    add-int/2addr v11, v9

    .line 122
    aget-char v12, p1, v1

    sget-object v13, Lcom/badlogic/gdx/utils/XmlReader;->_xml_trans_keys:[C

    aget-char v13, v13, v11

    if-ge v12, v13, :cond_4

    .line 123
    add-int/lit8 v8, v11, -0x1

    goto :goto_2

    .line 124
    :cond_4
    aget-char v9, p1, v1

    sget-object v12, Lcom/badlogic/gdx/utils/XmlReader;->_xml_trans_keys:[C

    aget-char v12, v12, v11

    if-le v9, v12, :cond_5

    .line 125
    add-int/lit8 v9, v11, 0x1

    goto :goto_2

    .line 127
    :cond_5
    sub-int v2, v11, v2

    add-int/2addr v3, v2

    .line 157
    :cond_6
    :goto_3
    sget-object v2, Lcom/badlogic/gdx/utils/XmlReader;->_xml_indicies:[B

    aget-byte v2, v2, v3

    .line 158
    sget-object v3, Lcom/badlogic/gdx/utils/XmlReader;->_xml_trans_targs:[B

    aget-byte v8, v3, v2

    .line 160
    sget-object v3, Lcom/badlogic/gdx/utils/XmlReader;->_xml_trans_actions:[B

    aget-byte v3, v3, v2

    if-eqz v3, :cond_17

    .line 161
    sget-object v3, Lcom/badlogic/gdx/utils/XmlReader;->_xml_trans_actions:[B

    aget-byte v2, v3, v2

    .line 162
    sget-object v7, Lcom/badlogic/gdx/utils/XmlReader;->_xml_actions:[B

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, v7, v2

    move-object v7, v5

    move v14, v3

    move v3, v2

    move v2, v6

    move v6, v4

    move v4, v14

    .line 163
    :goto_4
    add-int/lit8 v11, v3, -0x1

    if-lez v3, :cond_20

    .line 164
    sget-object v3, Lcom/badlogic/gdx/utils/XmlReader;->_xml_actions:[B

    add-int/lit8 v12, v4, 0x1

    aget-byte v3, v3, v4

    packed-switch v3, :pswitch_data_1

    :cond_7
    :goto_5
    move v3, v11

    move v4, v12

    .line 284
    goto :goto_4

    .line 131
    :cond_8
    add-int/2addr v2, v10

    .line 132
    add-int/2addr v3, v10

    .line 135
    :cond_9
    sget-object v8, Lcom/badlogic/gdx/utils/XmlReader;->_xml_range_lengths:[B

    aget-byte v9, v8, v7

    .line 136
    if-lez v9, :cond_6

    .line 139
    shl-int/lit8 v7, v9, 0x1

    add-int/2addr v7, v2

    add-int/lit8 v7, v7, -0x2

    move v8, v2

    .line 141
    :goto_6
    if-lt v7, v8, :cond_c

    .line 143
    sub-int v10, v7, v8

    shr-int/lit8 v10, v10, 0x1

    and-int/lit8 v10, v10, -0x2

    add-int/2addr v10, v8

    .line 144
    aget-char v11, p1, v1

    sget-object v12, Lcom/badlogic/gdx/utils/XmlReader;->_xml_trans_keys:[C

    aget-char v12, v12, v10

    if-ge v11, v12, :cond_a

    .line 145
    add-int/lit8 v7, v10, -0x2

    goto :goto_6

    .line 146
    :cond_a
    aget-char v8, p1, v1

    sget-object v11, Lcom/badlogic/gdx/utils/XmlReader;->_xml_trans_keys:[C

    add-int/lit8 v12, v10, 0x1

    aget-char v11, v11, v12

    if-le v8, v11, :cond_b

    .line 147
    add-int/lit8 v8, v10, 0x2

    goto :goto_6

    .line 149
    :cond_b
    sub-int v2, v10, v2

    shr-int/lit8 v2, v2, 0x1

    add-int/2addr v3, v2

    .line 150
    goto :goto_3

    .line 153
    :cond_c
    add-int/2addr v3, v9

    goto :goto_3

    :pswitch_2
    move v3, v11

    move v4, v12

    move v2, v1

    .line 170
    goto :goto_4

    .line 174
    :pswitch_3
    aget-char v3, p1, v2

    .line 175
    const/16 v4, 0x3f

    if-eq v3, v4, :cond_d

    const/16 v4, 0x21

    if-ne v3, v4, :cond_11

    .line 176
    :cond_d
    add-int/lit8 v3, v2, 0x1

    aget-char v3, p1, v3

    const/16 v4, 0x5b

    if-ne v3, v4, :cond_10

    add-int/lit8 v3, v2, 0x2

    aget-char v3, p1, v3

    const/16 v4, 0x43

    if-ne v3, v4, :cond_10

    add-int/lit8 v3, v2, 0x3

    aget-char v3, p1, v3

    const/16 v4, 0x44

    if-ne v3, v4, :cond_10

    add-int/lit8 v3, v2, 0x4

    aget-char v3, p1, v3

    const/16 v4, 0x41

    if-ne v3, v4, :cond_10

    add-int/lit8 v3, v2, 0x5

    aget-char v3, p1, v3

    const/16 v4, 0x54

    if-ne v3, v4, :cond_10

    add-int/lit8 v3, v2, 0x6

    aget-char v3, p1, v3

    const/16 v4, 0x41

    if-ne v3, v4, :cond_10

    add-int/lit8 v3, v2, 0x7

    aget-char v3, p1, v3

    const/16 v4, 0x5b

    if-ne v3, v4, :cond_10

    .line 183
    add-int/lit8 v2, v2, 0x8

    .line 184
    add-int/lit8 v1, v2, 0x2

    .line 185
    :goto_7
    add-int/lit8 v3, v1, -0x2

    aget-char v3, p1, v3

    const/16 v4, 0x5d

    if-ne v3, v4, :cond_e

    add-int/lit8 v3, v1, -0x1

    aget-char v3, p1, v3

    const/16 v4, 0x5d

    if-ne v3, v4, :cond_e

    aget-char v3, p1, v1

    const/16 v4, 0x3e

    if-eq v3, v4, :cond_f

    .line 186
    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 187
    :cond_f
    new-instance v3, Ljava/lang/String;

    sub-int v4, v1, v2

    add-int/lit8 v4, v4, -0x2

    move-object/from16 v0, p1

    invoke-direct {v3, v0, v2, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/utils/XmlReader;->text(Ljava/lang/String;)V

    move v14, v2

    move v2, v1

    move v1, v14

    .line 192
    :goto_8
    const/16 v5, 0xf

    .line 193
    const/4 v3, 0x2

    move v4, v6

    move v6, v1

    move v1, v2

    move v2, v3

    move-object v14, v7

    move v7, v5

    move-object v5, v14

    .line 194
    goto/16 :goto_0

    .line 189
    :cond_10
    :goto_9
    aget-char v3, p1, v1

    const/16 v4, 0x3e

    if-eq v3, v4, :cond_1f

    .line 190
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 197
    :cond_11
    const/4 v6, 0x1

    .line 198
    new-instance v3, Ljava/lang/String;

    sub-int v4, v1, v2

    move-object/from16 v0, p1

    invoke-direct {v3, v0, v2, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/utils/XmlReader;->open(Ljava/lang/String;)V

    move v3, v11

    move v4, v12

    .line 200
    goto/16 :goto_4

    .line 204
    :pswitch_4
    const/4 v4, 0x0

    .line 205
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/XmlReader;->close()V

    .line 207
    const/16 v5, 0xf

    .line 208
    const/4 v3, 0x2

    move v6, v2

    move v2, v3

    move-object v14, v7

    move v7, v5

    move-object v5, v14

    .line 209
    goto/16 :goto_0

    .line 216
    :pswitch_5
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/XmlReader;->close()V

    .line 218
    const/16 v5, 0xf

    .line 219
    const/4 v3, 0x2

    move v4, v6

    move v6, v2

    move v2, v3

    move-object v14, v7

    move v7, v5

    move-object v5, v14

    .line 220
    goto/16 :goto_0

    .line 227
    :pswitch_6
    if-eqz v6, :cond_7

    .line 228
    const/16 v5, 0xf

    .line 229
    const/4 v3, 0x2

    move v4, v6

    move v6, v2

    move v2, v3

    move-object v14, v7

    move v7, v5

    move-object v5, v14

    .line 230
    goto/16 :goto_0

    .line 237
    :pswitch_7
    new-instance v7, Ljava/lang/String;

    sub-int v3, v1, v2

    move-object/from16 v0, p1

    invoke-direct {v7, v0, v2, v3}, Ljava/lang/String;-><init>([CII)V

    move v3, v11

    move v4, v12

    .line 239
    goto/16 :goto_4

    .line 243
    :pswitch_8
    new-instance v3, Ljava/lang/String;

    sub-int v4, v1, v2

    move-object/from16 v0, p1

    invoke-direct {v3, v0, v2, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p0, v7, v3}, Lcom/badlogic/gdx/utils/XmlReader;->attribute(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v11

    move v4, v12

    .line 245
    goto/16 :goto_4

    :pswitch_9
    move v10, v1

    .line 250
    :goto_a
    if-eq v10, v2, :cond_12

    .line 251
    add-int/lit8 v3, v10, -0x1

    aget-char v3, p1, v3

    sparse-switch v3, :sswitch_data_0

    .line 262
    :cond_12
    const/4 v3, 0x0

    move v5, v2

    move v14, v2

    move v2, v3

    move v3, v14

    .line 263
    :goto_b
    if-eq v3, v10, :cond_14

    .line 264
    add-int/lit8 v9, v3, 0x1

    aget-char v3, p1, v3

    const/16 v4, 0x26

    if-ne v3, v4, :cond_1e

    move v3, v9

    .line 266
    :goto_c
    if-eq v3, v10, :cond_1d

    .line 267
    add-int/lit8 v4, v3, 0x1

    aget-char v3, p1, v3

    const/16 v13, 0x3b

    if-ne v3, v13, :cond_1c

    .line 268
    iget-object v2, p0, Lcom/badlogic/gdx/utils/XmlReader;->textBuffer:Lcom/badlogic/gdx/utils/StringBuilder;

    sub-int v3, v9, v5

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v5, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append([CII)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 269
    new-instance v3, Ljava/lang/String;

    sub-int v2, v4, v9

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p1

    invoke-direct {v3, v0, v9, v2}, Ljava/lang/String;-><init>([CII)V

    .line 270
    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/utils/XmlReader;->entity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 271
    iget-object v5, p0, Lcom/badlogic/gdx/utils/XmlReader;->textBuffer:Lcom/badlogic/gdx/utils/StringBuilder;

    if-eqz v2, :cond_13

    :goto_d
    invoke-virtual {v5, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 273
    const/4 v2, 0x1

    move v3, v4

    :goto_e
    move v5, v4

    .line 274
    goto :goto_b

    .line 256
    :sswitch_0
    add-int/lit8 v3, v10, -0x1

    move v10, v3

    .line 257
    goto :goto_a

    :cond_13
    move-object v2, v3

    .line 271
    goto :goto_d

    .line 277
    :cond_14
    if-eqz v2, :cond_16

    .line 278
    if-ge v5, v10, :cond_15

    iget-object v2, p0, Lcom/badlogic/gdx/utils/XmlReader;->textBuffer:Lcom/badlogic/gdx/utils/StringBuilder;

    sub-int v3, v10, v5

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v5, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append([CII)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 279
    :cond_15
    iget-object v2, p0, Lcom/badlogic/gdx/utils/XmlReader;->textBuffer:Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/utils/XmlReader;->text(Ljava/lang/String;)V

    .line 280
    iget-object v2, p0, Lcom/badlogic/gdx/utils/XmlReader;->textBuffer:Lcom/badlogic/gdx/utils/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    move v3, v11

    move v4, v12

    move v2, v5

    goto/16 :goto_4

    .line 282
    :cond_16
    new-instance v2, Ljava/lang/String;

    sub-int v3, v10, v5

    move-object/from16 v0, p1

    invoke-direct {v2, v0, v5, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/utils/XmlReader;->text(Ljava/lang/String;)V

    move v2, v5

    goto/16 :goto_5

    :cond_17
    move v2, v4

    move-object v3, v5

    move v4, v6

    move v5, v8

    .line 291
    :goto_f
    if-nez v5, :cond_18

    .line 292
    const/4 v6, 0x5

    move v7, v5

    move-object v5, v3

    move v14, v2

    move v2, v6

    move v6, v4

    move v4, v14

    .line 293
    goto/16 :goto_0

    .line 295
    :cond_18
    add-int/lit8 v1, v1, 0x1

    move/from16 v0, p3

    if-eq v1, v0, :cond_0

    .line 296
    const/4 v6, 0x1

    move v7, v5

    move-object v5, v3

    move v14, v2

    move v2, v6

    move v6, v4

    move v4, v14

    .line 297
    goto/16 :goto_0

    .line 312
    :cond_19
    new-instance v2, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Error parsing XML on line "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " near: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v4, Ljava/lang/String;

    const/16 v5, 0x20

    sub-int v6, p3, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    move-object/from16 v0, p1

    invoke-direct {v4, v0, v3, v5}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 314
    :cond_1a
    iget-object v1, p0, Lcom/badlogic/gdx/utils/XmlReader;->elements:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eqz v1, :cond_1b

    .line 315
    iget-object v1, p0, Lcom/badlogic/gdx/utils/XmlReader;->elements:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/XmlReader$Element;

    .line 316
    iget-object v2, p0, Lcom/badlogic/gdx/utils/XmlReader;->elements:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 317
    new-instance v2, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Error parsing XML, unclosed element: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 319
    :cond_1b
    iget-object v1, p0, Lcom/badlogic/gdx/utils/XmlReader;->root:Lcom/badlogic/gdx/utils/XmlReader$Element;

    .line 320
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/badlogic/gdx/utils/XmlReader;->root:Lcom/badlogic/gdx/utils/XmlReader$Element;

    .line 321
    return-object v1

    :cond_1c
    move v3, v4

    goto/16 :goto_c

    :cond_1d
    move v4, v5

    goto/16 :goto_e

    :cond_1e
    move v3, v9

    goto/16 :goto_b

    :pswitch_a
    move v2, v4

    move-object v3, v5

    move v4, v6

    move v5, v7

    goto/16 :goto_f

    :cond_1f
    move v14, v2

    move v2, v1

    move v1, v14

    goto/16 :goto_8

    :cond_20
    move-object v3, v7

    move v4, v2

    move v5, v8

    move v2, v6

    goto/16 :goto_f

    .line 98
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_a
    .end packed-switch

    .line 164
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch

    .line 251
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method protected text(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 424
    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlReader;->current:Lcom/badlogic/gdx/utils/XmlReader$Element;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getText()Ljava/lang/String;

    move-result-object v0

    .line 425
    iget-object v1, p0, Lcom/badlogic/gdx/utils/XmlReader;->current:Lcom/badlogic/gdx/utils/XmlReader$Element;

    if-eqz v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->setText(Ljava/lang/String;)V

    .line 426
    return-void
.end method

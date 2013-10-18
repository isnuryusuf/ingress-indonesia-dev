.class public Lcom/badlogic/gdx/utils/JsonReader;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final _json_actions:[B = null

.field private static final _json_eof_actions:[B = null

.field private static final _json_index_offsets:[S = null

.field private static final _json_key_offsets:[S = null

.field private static final _json_range_lengths:[B = null

.field private static final _json_single_lengths:[B = null

.field private static final _json_trans_actions:[B = null

.field private static final _json_trans_keys:[C = null

.field private static final _json_trans_targs:[B = null

.field static final json_en_array:I = 0x31

.field static final json_en_main:I = 0x1

.field static final json_en_object:I = 0x9

.field static final json_error:I = 0x0

.field static final json_first_final:I = 0x4c

.field static final json_start:I = 0x1


# instance fields
.field private current:Ljava/lang/Object;

.field private final elements:Lcom/badlogic/gdx/utils/Array;

.field private root:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 432
    invoke-static {}, Lcom/badlogic/gdx/utils/JsonReader;->init__json_actions_0()[B

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/JsonReader;->_json_actions:[B

    .line 441
    invoke-static {}, Lcom/badlogic/gdx/utils/JsonReader;->init__json_key_offsets_0()[S

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/JsonReader;->_json_key_offsets:[S

    .line 469
    invoke-static {}, Lcom/badlogic/gdx/utils/JsonReader;->init__json_trans_keys_0()[C

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/JsonReader;->_json_trans_keys:[C

    .line 477
    invoke-static {}, Lcom/badlogic/gdx/utils/JsonReader;->init__json_single_lengths_0()[B

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/JsonReader;->_json_single_lengths:[B

    .line 485
    invoke-static {}, Lcom/badlogic/gdx/utils/JsonReader;->init__json_range_lengths_0()[B

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/JsonReader;->_json_range_lengths:[B

    .line 494
    invoke-static {}, Lcom/badlogic/gdx/utils/JsonReader;->init__json_index_offsets_0()[S

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/JsonReader;->_json_index_offsets:[S

    .line 519
    invoke-static {}, Lcom/badlogic/gdx/utils/JsonReader;->init__json_trans_targs_0()[B

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/JsonReader;->_json_trans_targs:[B

    .line 541
    invoke-static {}, Lcom/badlogic/gdx/utils/JsonReader;->init__json_trans_actions_0()[B

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/JsonReader;->_json_trans_actions:[B

    .line 549
    invoke-static {}, Lcom/badlogic/gdx/utils/JsonReader;->init__json_eof_actions_0()[B

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/JsonReader;->_json_eof_actions:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 561
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->elements:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method

.method private static init__json_actions_0()[B
    .locals 1

    .prologue
    .line 428
    const/16 v0, 0x46

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
        0x8t
        0x1t
        0x9t
        0x1t
        0xat
        0x1t
        0xbt
        0x2t
        0x0t
        0x2t
        0x2t
        0x0t
        0x3t
        0x2t
        0x3t
        0x9t
        0x2t
        0x3t
        0xbt
        0x2t
        0x4t
        0x9t
        0x2t
        0x4t
        0xbt
        0x2t
        0x5t
        0x3t
        0x2t
        0x6t
        0x3t
        0x2t
        0x7t
        0x3t
        0x3t
        0x5t
        0x3t
        0x9t
        0x3t
        0x5t
        0x3t
        0xbt
        0x3t
        0x6t
        0x3t
        0x9t
        0x3t
        0x6t
        0x3t
        0xbt
        0x3t
        0x7t
        0x3t
        0x9t
        0x3t
        0x7t
        0x3t
        0xbt
    .end array-data
.end method

.method private static init__json_eof_actions_0()[B
    .locals 1

    .prologue
    .line 544
    const/16 v0, 0x60

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x7t
        0x9t
        0x9t
        0x9t
        0x7t
        0x7t
        0x7t
        0x7t
        0x28t
        0x7t
        0x7t
        0x7t
        0x2bt
        0x7t
        0x7t
        0x7t
        0x25t
        0x0t
        0x0t
    .end array-data
.end method

.method private static init__json_index_offsets_0()[S
    .locals 1

    .prologue
    .line 488
    const/16 v0, 0x60

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 0x2
        0x0t 0x0t
        0x0t 0x0t
        0xft 0x0t
        0x12t 0x0t
        0x15t 0x0t
        0x1et 0x0t
        0x20t 0x0t
        0x22t 0x0t
        0x26t 0x0t
        0x28t 0x0t
        0x34t 0x0t
        0x37t 0x0t
        0x3at 0x0t
        0x3et 0x0t
        0x4dt 0x0t
        0x50t 0x0t
        0x53t 0x0t
        0x58t 0x0t
        0x63t 0x0t
        0x6at 0x0t
        0x6ct 0x0t
        0x74t 0x0t
        0x76t 0x0t
        0x7dt 0x0t
        0x81t 0x0t
        0x83t 0x0t
        0x88t 0x0t
        0x91t 0x0t
        0x98t 0x0t
        0x9at 0x0t
        0xa3t 0x0t
        0xa5t 0x0t
        0xadt 0x0t
        0xb1t 0x0t
        0xb3t 0x0t
        0xb9t 0x0t
        0xc1t 0x0t
        0xc9t 0x0t
        0xd1t 0x0t
        0xd9t 0x0t
        0xe0t 0x0t
        0xe8t 0x0t
        0xf0t 0x0t
        0xf8t 0x0t
        0xfft 0x0t
        0x7t 0x1t
        0xft 0x1t
        0x17t 0x1t
        0x1et 0x1t
        0x27t 0x1t
        0x38t 0x1t
        0x3bt 0x1t
        0x3et 0x1t
        0x43t 0x1t
        0x53t 0x1t
        0x5at 0x1t
        0x5ct 0x1t
        0x65t 0x1t
        0x67t 0x1t
        0x6ft 0x1t
        0x73t 0x1t
        0x75t 0x1t
        0x7bt 0x1t
        0x83t 0x1t
        0x8bt 0x1t
        0x93t 0x1t
        0x9bt 0x1t
        0xa2t 0x1t
        0xaat 0x1t
        0xb2t 0x1t
        0xbat 0x1t
        0xc1t 0x1t
        0xc9t 0x1t
        0xd1t 0x1t
        0xd9t 0x1t
        0xe0t 0x1t
        0xe9t 0x1t
        0xect 0x1t
        0xf3t 0x1t
        0xfat 0x1t
        0x0t 0x2t
        0x4t 0x2t
        0xct 0x2t
        0x14t 0x2t
        0x1ct 0x2t
        0x24t 0x2t
        0x2bt 0x2t
        0x33t 0x2t
        0x3bt 0x2t
        0x43t 0x2t
        0x4at 0x2t
        0x52t 0x2t
        0x5at 0x2t
        0x62t 0x2t
        0x69t 0x2t
        0x6at 0x2t
    .end array-data
.end method

.method private static init__json_key_offsets_0()[S
    .locals 1

    .prologue
    .line 435
    const/16 v0, 0x60

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 0x2
        0x0t 0x0t
        0x0t 0x0t
        0x12t 0x0t
        0x14t 0x0t
        0x16t 0x0t
        0x1ft 0x0t
        0x21t 0x0t
        0x23t 0x0t
        0x27t 0x0t
        0x29t 0x0t
        0x38t 0x0t
        0x3at 0x0t
        0x3ct 0x0t
        0x40t 0x0t
        0x52t 0x0t
        0x54t 0x0t
        0x56t 0x0t
        0x5bt 0x0t
        0x69t 0x0t
        0x70t 0x0t
        0x72t 0x0t
        0x7bt 0x0t
        0x7dt 0x0t
        0x85t 0x0t
        0x89t 0x0t
        0x8bt 0x0t
        0x91t 0x0t
        0x9at 0x0t
        0xa1t 0x0t
        0xa3t 0x0t
        0xadt 0x0t
        0xaft 0x0t
        0xb8t 0x0t
        0xbct 0x0t
        0xbet 0x0t
        0xc5t 0x0t
        0xcdt 0x0t
        0xd5t 0x0t
        0xddt 0x0t
        0xe5t 0x0t
        0xect 0x0t
        0xf4t 0x0t
        0xfct 0x0t
        0x4t 0x1t
        0xbt 0x1t
        0x13t 0x1t
        0x1bt 0x1t
        0x23t 0x1t
        0x2at 0x1t
        0x33t 0x1t
        0x47t 0x1t
        0x49t 0x1t
        0x4bt 0x1t
        0x50t 0x1t
        0x63t 0x1t
        0x6at 0x1t
        0x6ct 0x1t
        0x76t 0x1t
        0x78t 0x1t
        0x81t 0x1t
        0x85t 0x1t
        0x87t 0x1t
        0x8et 0x1t
        0x96t 0x1t
        0x9et 0x1t
        0xa6t 0x1t
        0xaet 0x1t
        0xb5t 0x1t
        0xbdt 0x1t
        0xc5t 0x1t
        0xcdt 0x1t
        0xd4t 0x1t
        0xdct 0x1t
        0xe4t 0x1t
        0xect 0x1t
        0xf3t 0x1t
        0xfct 0x1t
        0xfft 0x1t
        0x6t 0x2t
        0xet 0x2t
        0x15t 0x2t
        0x1at 0x2t
        0x22t 0x2t
        0x2at 0x2t
        0x32t 0x2t
        0x3at 0x2t
        0x41t 0x2t
        0x49t 0x2t
        0x51t 0x2t
        0x59t 0x2t
        0x60t 0x2t
        0x68t 0x2t
        0x70t 0x2t
        0x78t 0x2t
        0x7ft 0x2t
        0x7ft 0x2t
    .end array-data
.end method

.method private static init__json_range_lengths_0()[B
    .locals 1

    .prologue
    .line 480
    const/16 v0, 0x60

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 0x1
        0x0t
        0x4t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x4t
        0x0t
        0x0t
        0x1t
        0x4t
        0x0t
        0x0t
        0x1t
        0x4t
        0x1t
        0x1t
        0x2t
        0x1t
        0x2t
        0x1t
        0x1t
        0x2t
        0x1t
        0x1t
        0x1t
        0x2t
        0x1t
        0x2t
        0x1t
        0x1t
        0x2t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x4t
        0x0t
        0x0t
        0x1t
        0x4t
        0x1t
        0x1t
        0x2t
        0x1t
        0x2t
        0x1t
        0x1t
        0x2t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x2t
        0x2t
        0x2t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
    .end array-data
.end method

.method private static init__json_single_lengths_0()[B
    .locals 1

    .prologue
    .line 472
    const/16 v0, 0x60

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 0x1
        0x0t
        0xat
        0x2t
        0x2t
        0x7t
        0x0t
        0x0t
        0x2t
        0x0t
        0x7t
        0x2t
        0x2t
        0x2t
        0xat
        0x2t
        0x2t
        0x3t
        0x6t
        0x5t
        0x0t
        0x5t
        0x0t
        0x4t
        0x2t
        0x0t
        0x2t
        0x7t
        0x5t
        0x0t
        0x6t
        0x0t
        0x5t
        0x2t
        0x0t
        0x3t
        0x6t
        0x6t
        0x6t
        0x6t
        0x5t
        0x6t
        0x6t
        0x6t
        0x5t
        0x6t
        0x6t
        0x6t
        0x5t
        0x7t
        0xct
        0x2t
        0x2t
        0x3t
        0xbt
        0x5t
        0x0t
        0x6t
        0x0t
        0x5t
        0x2t
        0x0t
        0x3t
        0x6t
        0x6t
        0x6t
        0x6t
        0x5t
        0x6t
        0x6t
        0x6t
        0x5t
        0x6t
        0x6t
        0x6t
        0x5t
        0x7t
        0x1t
        0x5t
        0x4t
        0x3t
        0x1t
        0x6t
        0x6t
        0x6t
        0x6t
        0x5t
        0x6t
        0x6t
        0x6t
        0x5t
        0x6t
        0x6t
        0x6t
        0x5t
        0x0t
        0x0t
    .end array-data
.end method

.method private static init__json_trans_actions_0()[B
    .locals 1

    .prologue
    .line 522
    const/16 v0, 0x26c

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 0x1
        0x0t
        0x0t
        0x1t
        0x1t
        0xft
        0x1t
        0x1t
        0x1t
        0x1t
        0xbt
        0x0t
        0x1t
        0x1t
        0x1t
        0x0t
        0x16t
        0x1t
        0x1t
        0x7t
        0x0t
        0x0t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0xdt
        0x0t
        0x1t
        0x1t
        0x1t
        0x0t
        0x13t
        0x1t
        0x1t
        0x5t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0xft
        0x1t
        0x1t
        0x1t
        0x1t
        0xbt
        0x0t
        0x1t
        0x1t
        0x1t
        0x0t
        0x16t
        0x1t
        0x1t
        0x7t
        0x0t
        0x0t
        0x0t
        0x0t
        0xdt
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0xdt
        0x0t
        0x1t
        0x1t
        0x1t
        0x0t
        0x5t
        0x0t
        0x5t
        0x0t
        0x0t
        0x5t
        0x0t
        0x0t
        0x0t
        0x5t
        0x0t
        0x5t
        0x0t
        0x0t
        0x5t
        0x0t
        0x0t
        0x0t
        0x0t
        0x5t
        0x5t
        0x0t
        0x0t
        0x5t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x5t
        0x5t
        0x5t
        0x0t
        0x0t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x0t
        0x7t
        0x7t
        0x0t
        0x0t
        0x19t
        0x7t
        0x0t
        0x0t
        0x0t
        0x9t
        0x9t
        0x0t
        0x0t
        0x0t
        0x1ft
        0x9t
        0x0t
        0x0t
        0x0t
        0x0t
        0x9t
        0x9t
        0x0t
        0x0t
        0x1ft
        0x9t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x9t
        0x9t
        0x1ft
        0x9t
        0x0t
        0x0t
        0x7t
        0x7t
        0x0t
        0x0t
        0x0t
        0x19t
        0x7t
        0x0t
        0x7t
        0x7t
        0x0t
        0x0t
        0x0t
        0x19t
        0x7t
        0x0t
        0x7t
        0x7t
        0x0t
        0x0t
        0x0t
        0x19t
        0x7t
        0x0t
        0x7t
        0x7t
        0x0t
        0x0t
        0x0t
        0x19t
        0x7t
        0x0t
        0x28t
        0x28t
        0x0t
        0x0t
        0x36t
        0x28t
        0x0t
        0x7t
        0x7t
        0x0t
        0x0t
        0x0t
        0x19t
        0x7t
        0x0t
        0x7t
        0x7t
        0x0t
        0x0t
        0x0t
        0x19t
        0x7t
        0x0t
        0x7t
        0x7t
        0x0t
        0x0t
        0x0t
        0x19t
        0x7t
        0x0t
        0x2bt
        0x2bt
        0x0t
        0x0t
        0x3et
        0x2bt
        0x0t
        0x7t
        0x7t
        0x0t
        0x0t
        0x0t
        0x19t
        0x7t
        0x0t
        0x7t
        0x7t
        0x0t
        0x0t
        0x0t
        0x19t
        0x7t
        0x0t
        0x7t
        0x7t
        0x0t
        0x0t
        0x0t
        0x19t
        0x7t
        0x0t
        0x25t
        0x25t
        0x0t
        0x0t
        0x2et
        0x25t
        0x0t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0xft
        0x11t
        0x1t
        0x1t
        0x1t
        0x1t
        0xbt
        0x0t
        0x1t
        0x1t
        0x1t
        0x0t
        0x16t
        0x1t
        0x1t
        0x7t
        0x0t
        0x0t
        0x0t
        0x0t
        0x11t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0xft
        0x11t
        0x1t
        0x1t
        0x1t
        0x1t
        0xbt
        0x0t
        0x1t
        0x1t
        0x1t
        0x0t
        0x7t
        0x7t
        0x0t
        0x1ct
        0x0t
        0x7t
        0x0t
        0x0t
        0x0t
        0x9t
        0x9t
        0x0t
        0x0t
        0x22t
        0x0t
        0x9t
        0x0t
        0x0t
        0x0t
        0x0t
        0x9t
        0x9t
        0x0t
        0x22t
        0x0t
        0x9t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x9t
        0x9t
        0x22t
        0x9t
        0x0t
        0x0t
        0x7t
        0x7t
        0x0t
        0x1ct
        0x0t
        0x0t
        0x7t
        0x0t
        0x7t
        0x7t
        0x0t
        0x1ct
        0x0t
        0x0t
        0x7t
        0x0t
        0x7t
        0x7t
        0x0t
        0x1ct
        0x0t
        0x0t
        0x7t
        0x0t
        0x7t
        0x7t
        0x0t
        0x1ct
        0x0t
        0x0t
        0x7t
        0x0t
        0x28t
        0x28t
        0x0t
        0x3at
        0x0t
        0x28t
        0x0t
        0x7t
        0x7t
        0x0t
        0x1ct
        0x0t
        0x0t
        0x7t
        0x0t
        0x7t
        0x7t
        0x0t
        0x1ct
        0x0t
        0x0t
        0x7t
        0x0t
        0x7t
        0x7t
        0x0t
        0x1ct
        0x0t
        0x0t
        0x7t
        0x0t
        0x2bt
        0x2bt
        0x0t
        0x42t
        0x0t
        0x2bt
        0x0t
        0x7t
        0x7t
        0x0t
        0x1ct
        0x0t
        0x0t
        0x7t
        0x0t
        0x7t
        0x7t
        0x0t
        0x1ct
        0x0t
        0x0t
        0x7t
        0x0t
        0x7t
        0x7t
        0x0t
        0x1ct
        0x0t
        0x0t
        0x7t
        0x0t
        0x25t
        0x25t
        0x0t
        0x32t
        0x0t
        0x25t
        0x0t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x0t
        0x0t
        0x0t
        0x0t
        0x7t
        0x0t
        0x0t
        0x0t
        0x0t
        0x7t
        0x0t
        0x9t
        0x0t
        0x0t
        0x0t
        0x9t
        0x0t
        0x0t
        0x9t
        0x0t
        0x0t
        0x9t
        0x0t
        0x0t
        0x9t
        0x9t
        0x0t
        0x0t
        0x7t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x7t
        0x0t
        0x7t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x7t
        0x0t
        0x7t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x7t
        0x0t
        0x7t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x7t
        0x0t
        0x28t
        0x0t
        0x0t
        0x0t
        0x0t
        0x28t
        0x0t
        0x7t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x7t
        0x0t
        0x7t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x7t
        0x0t
        0x7t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x7t
        0x0t
        0x2bt
        0x0t
        0x0t
        0x0t
        0x0t
        0x2bt
        0x0t
        0x7t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x7t
        0x0t
        0x7t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x7t
        0x0t
        0x7t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x7t
        0x0t
        0x25t
        0x0t
        0x0t
        0x0t
        0x0t
        0x25t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private static init__json_trans_keys_0()[C
    .locals 1

    .prologue
    .line 444
    const/16 v0, 0x280

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 0x2
        0x20t 0x0t
        0x22t 0x0t
        0x24t 0x0t
        0x2dt 0x0t
        0x5bt 0x0t
        0x5ft 0x0t
        0x66t 0x0t
        0x6et 0x0t
        0x74t 0x0t
        0x7bt 0x0t
        0x9t 0x0t
        0xdt 0x0t
        0x30t 0x0t
        0x39t 0x0t
        0x41t 0x0t
        0x5at 0x0t
        0x61t 0x0t
        0x7at 0x0t
        0x22t 0x0t
        0x5ct 0x0t
        0x22t 0x0t
        0x5ct 0x0t
        0x22t 0x0t
        0x2ft 0x0t
        0x5ct 0x0t
        0x62t 0x0t
        0x66t 0x0t
        0x6et 0x0t
        0x72t 0x0t
        0x74t 0x0t
        0x75t 0x0t
        0x30t 0x0t
        0x39t 0x0t
        0x30t 0x0t
        0x39t 0x0t
        0x2bt 0x0t
        0x2dt 0x0t
        0x30t 0x0t
        0x39t 0x0t
        0x30t 0x0t
        0x39t 0x0t
        0x20t 0x0t
        0x22t 0x0t
        0x24t 0x0t
        0x2ct 0x0t
        0x2dt 0x0t
        0x5ft 0x0t
        0x7dt 0x0t
        0x9t 0x0t
        0xdt 0x0t
        0x30t 0x0t
        0x39t 0x0t
        0x41t 0x0t
        0x5at 0x0t
        0x61t 0x0t
        0x7at 0x0t
        0x22t 0x0t
        0x5ct 0x0t
        0x22t 0x0t
        0x5ct 0x0t
        0x20t 0x0t
        0x3at 0x0t
        0x9t 0x0t
        0xdt 0x0t
        0x20t 0x0t
        0x22t 0x0t
        0x24t 0x0t
        0x2dt 0x0t
        0x5bt 0x0t
        0x5ft 0x0t
        0x66t 0x0t
        0x6et 0x0t
        0x74t 0x0t
        0x7bt 0x0t
        0x9t 0x0t
        0xdt 0x0t
        0x30t 0x0t
        0x39t 0x0t
        0x41t 0x0t
        0x5at 0x0t
        0x61t 0x0t
        0x7at 0x0t
        0x22t 0x0t
        0x5ct 0x0t
        0x22t 0x0t
        0x5ct 0x0t
        0x20t 0x0t
        0x2ct 0x0t
        0x7dt 0x0t
        0x9t 0x0t
        0xdt 0x0t
        0x20t 0x0t
        0x22t 0x0t
        0x24t 0x0t
        0x2dt 0x0t
        0x5ft 0x0t
        0x7dt 0x0t
        0x9t 0x0t
        0xdt 0x0t
        0x30t 0x0t
        0x39t 0x0t
        0x41t 0x0t
        0x5at 0x0t
        0x61t 0x0t
        0x7at 0x0t
        0x20t 0x0t
        0x2ct 0x0t
        0x3at 0x0t
        0x5dt 0x0t
        0x7dt 0x0t
        0x9t 0x0t
        0xdt 0x0t
        0x30t 0x0t
        0x39t 0x0t
        0x20t 0x0t
        0x2et 0x0t
        0x3at 0x0t
        0x45t 0x0t
        0x65t 0x0t
        0x9t 0x0t
        0xdt 0x0t
        0x30t 0x0t
        0x39t 0x0t
        0x30t 0x0t
        0x39t 0x0t
        0x20t 0x0t
        0x3at 0x0t
        0x45t 0x0t
        0x65t 0x0t
        0x9t 0x0t
        0xdt 0x0t
        0x30t 0x0t
        0x39t 0x0t
        0x2bt 0x0t
        0x2dt 0x0t
        0x30t 0x0t
        0x39t 0x0t
        0x30t 0x0t
        0x39t 0x0t
        0x20t 0x0t
        0x3at 0x0t
        0x9t 0x0t
        0xdt 0x0t
        0x30t 0x0t
        0x39t 0x0t
        0x22t 0x0t
        0x2ft 0x0t
        0x5ct 0x0t
        0x62t 0x0t
        0x66t 0x0t
        0x6et 0x0t
        0x72t 0x0t
        0x74t 0x0t
        0x75t 0x0t
        0x20t 0x0t
        0x2ct 0x0t
        0x3at 0x0t
        0x5dt 0x0t
        0x7dt 0x0t
        0x9t 0x0t
        0xdt 0x0t
        0x30t 0x0t
        0x39t 0x0t
        0x20t 0x0t
        0x2ct 0x0t
        0x2et 0x0t
        0x45t 0x0t
        0x65t 0x0t
        0x7dt 0x0t
        0x9t 0x0t
        0xdt 0x0t
        0x30t 0x0t
        0x39t 0x0t
        0x30t 0x0t
        0x39t 0x0t
        0x20t 0x0t
        0x2ct 0x0t
        0x45t 0x0t
        0x65t 0x0t
        0x7dt 0x0t
        0x9t 0x0t
        0xdt 0x0t
        0x30t 0x0t
        0x39t 0x0t
        0x2bt 0x0t
        0x2dt 0x0t
        0x30t 0x0t
        0x39t 0x0t
        0x30t 0x0t
        0x39t 0x0t
        0x20t 0x0t
        0x2ct 0x0t
        0x7dt 0x0t
        0x9t 0x0t
        0xdt 0x0t
        0x30t 0x0t
        0x39t 0x0t
        0x20t 0x0t
        0x2ct 0x0t
        0x3at 0x0t
        0x5dt 0x0t
        0x61t 0x0t
        0x7dt 0x0t
        0x9t 0x0t
        0xdt 0x0t
        0x20t 0x0t
        0x2ct 0x0t
        0x3at 0x0t
        0x5dt 0x0t
        0x6ct 0x0t
        0x7dt 0x0t
        0x9t 0x0t
        0xdt 0x0t
        0x20t 0x0t
        0x2ct 0x0t
        0x3at 0x0t
        0x5dt 0x0t
        0x73t 0x0t
        0x7dt 0x0t
        0x9t 0x0t
        0xdt 0x0t
        0x20t 0x0t
        0x2ct 0x0t
        0x3at 0x0t
        0x5dt 0x0t
        0x65t 0x0t
        0x7dt 0x0t
        0x9t 0x0t
        0xdt 0x0t
        0x20t 0x0t
        0x2ct 0x0t
        0x3at 0x0t
        0x5dt 0x0t
        0x7dt 0x0t
        0x9t 0x0t
        0xdt 0x0t
        0x20t 0x0t
        0x2ct 0x0t
        0x3at 0x0t
        0x5dt 0x0t
        0x75t 0x0t
        0x7dt 0x0t
        0x9t 0x0t
        0xdt 0x0t
        0x20t 0x0t
        0x2ct 0x0t
        0x3at 0x0t
        0x5dt 0x0t
        0x6ct 0x0t
        0x7dt 0x0t
        0x9t 0x0t
        0xdt 0x0t
        0x20t 0x0t
        0x2ct 0x0t
        0x3at 0x0t
        0x5dt 0x0t
        0x6ct 0x0t
        0x7dt 0x0t
        0x9t 0x0t
        0xdt 0x0t
        0x20t 0x0t
        0x2ct 0x0t
        0x3at 0x0t
        0x5dt 0x0t
        0x7dt 0x0t
        0x9t 0x0t
        0xdt 0x0t
        0x20t 0x0t
        0x2ct 0x0t
        0x3at 0x0t
        0x5dt 0x0t
        0x72t 0x0t
        0x7dt 0x0t
        0x9t 0x0t
        0xdt 0x0t
        0x20t 0x0t
        0x2ct 0x0t
        0x3at 0x0t
        0x5dt 0x0t
        0x75t 0x0t
        0x7dt 0x0t
        0x9t 0x0t
        0xdt 0x0t
        0x20t 0x0t
        0x2ct 0x0t
        0x3at 0x0t
        0x5dt 0x0t
        0x65t 0x0t
        0x7dt 0x0t
        0x9t 0x0t
        0xdt 0x0t
        0x20t 0x0t
        0x2ct 0x0t
        0x3at 0x0t
        0x5dt 0x0t
        0x7dt 0x0t
        0x9t 0x0t
        0xdt 0x0t
        0x22t 0x0t
        0x2ft 0x0t
        0x5ct 0x0t
        0x62t 0x0t
        0x66t 0x0t
        0x6et 0x0t
        0x72t 0x0t
        0x74t 0x0t
        0x75t 0x0t
        0x20t 0x0t
        0x22t 0x0t
        0x24t 0x0t
        0x2ct 0x0t
        0x2dt 0x0t
        0x5bt 0x0t
        0x5dt 0x0t
        0x5ft 0x0t
        0x66t 0x0t
        0x6et 0x0t
        0x74t 0x0t
        0x7bt 0x0t
        0x9t 0x0t
        0xdt 0x0t
        0x30t 0x0t
        0x39t 0x0t
        0x41t 0x0t
        0x5at 0x0t
        0x61t 0x0t
        0x7at 0x0t
        0x22t 0x0t
        0x5ct 0x0t
        0x22t 0x0t
        0x5ct 0x0t
        0x20t 0x0t
        0x2ct 0x0t
        0x5dt 0x0t
        0x9t 0x0t
        0xdt 0x0t
        0x20t 0x0t
        0x22t 0x0t
        0x24t 0x0t
        0x2dt 0x0t
        0x5bt 0x0t
        0x5dt 0x0t
        0x5ft 0x0t
        0x66t 0x0t
        0x6et 0x0t
        0x74t 0x0t
        0x7bt 0x0t
        0x9t 0x0t
        0xdt 0x0t
        0x30t 0x0t
        0x39t 0x0t
        0x41t 0x0t
        0x5at 0x0t
        0x61t 0x0t
        0x7at 0x0t
        0x20t 0x0t
        0x2ct 0x0t
        0x3at 0x0t
        0x5dt 0x0t
        0x7dt 0x0t
        0x9t 0x0t
        0xdt 0x0t
        0x30t 0x0t
        0x39t 0x0t
        0x20t 0x0t
        0x2ct 0x0t
        0x2et 0x0t
        0x45t 0x0t
        0x5dt 0x0t
        0x65t 0x0t
        0x9t 0x0t
        0xdt 0x0t
        0x30t 0x0t
        0x39t 0x0t
        0x30t 0x0t
        0x39t 0x0t
        0x20t 0x0t
        0x2ct 0x0t
        0x45t 0x0t
        0x5dt 0x0t
        0x65t 0x0t
        0x9t 0x0t
        0xdt 0x0t
        0x30t 0x0t
        0x39t 0x0t
        0x2bt 0x0t
        0x2dt 0x0t
        0x30t 0x0t
        0x39t 0x0t
        0x30t 0x0t
        0x39t 0x0t
        0x20t 0x0t
        0x2ct 0x0t
        0x5dt 0x0t
        0x9t 0x0t
        0xdt 0x0t
        0x30t 0x0t
        0x39t 0x0t
        0x20t 0x0t
        0x2ct 0x0t
        0x3at 0x0t
        0x5dt 0x0t
        0x61t 0x0t
        0x7dt 0x0t
        0x9t 0x0t
        0xdt 0x0t
        0x20t 0x0t
        0x2ct 0x0t
        0x3at 0x0t
        0x5dt 0x0t
        0x6ct 0x0t
        0x7dt 0x0t
        0x9t 0x0t
        0xdt 0x0t
        0x20t 0x0t
        0x2ct 0x0t
        0x3at 0x0t
        0x5dt 0x0t
        0x73t 0x0t
        0x7dt 0x0t
        0x9t 0x0t
        0xdt 0x0t
        0x20t 0x0t
        0x2ct 0x0t
        0x3at 0x0t
        0x5dt 0x0t
        0x65t 0x0t
        0x7dt 0x0t
        0x9t 0x0t
        0xdt 0x0t
        0x20t 0x0t
        0x2ct 0x0t
        0x3at 0x0t
        0x5dt 0x0t
        0x7dt 0x0t
        0x9t 0x0t
        0xdt 0x0t
        0x20t 0x0t
        0x2ct 0x0t
        0x3at 0x0t
        0x5dt 0x0t
        0x75t 0x0t
        0x7dt 0x0t
        0x9t 0x0t
        0xdt 0x0t
        0x20t 0x0t
        0x2ct 0x0t
        0x3at 0x0t
        0x5dt 0x0t
        0x6ct 0x0t
        0x7dt 0x0t
        0x9t 0x0t
        0xdt 0x0t
        0x20t 0x0t
        0x2ct 0x0t
        0x3at 0x0t
        0x5dt 0x0t
        0x6ct 0x0t
        0x7dt 0x0t
        0x9t 0x0t
        0xdt 0x0t
        0x20t 0x0t
        0x2ct 0x0t
        0x3at 0x0t
        0x5dt 0x0t
        0x7dt 0x0t
        0x9t 0x0t
        0xdt 0x0t
        0x20t 0x0t
        0x2ct 0x0t
        0x3at 0x0t
        0x5dt 0x0t
        0x72t 0x0t
        0x7dt 0x0t
        0x9t 0x0t
        0xdt 0x0t
        0x20t 0x0t
        0x2ct 0x0t
        0x3at 0x0t
        0x5dt 0x0t
        0x75t 0x0t
        0x7dt 0x0t
        0x9t 0x0t
        0xdt 0x0t
        0x20t 0x0t
        0x2ct 0x0t
        0x3at 0x0t
        0x5dt 0x0t
        0x65t 0x0t
        0x7dt 0x0t
        0x9t 0x0t
        0xdt 0x0t
        0x20t 0x0t
        0x2ct 0x0t
        0x3at 0x0t
        0x5dt 0x0t
        0x7dt 0x0t
        0x9t 0x0t
        0xdt 0x0t
        0x22t 0x0t
        0x2ft 0x0t
        0x5ct 0x0t
        0x62t 0x0t
        0x66t 0x0t
        0x6et 0x0t
        0x72t 0x0t
        0x74t 0x0t
        0x75t 0x0t
        0x20t 0x0t
        0x9t 0x0t
        0xdt 0x0t
        0x20t 0x0t
        0x2ct 0x0t
        0x3at 0x0t
        0x5dt 0x0t
        0x7dt 0x0t
        0x9t 0x0t
        0xdt 0x0t
        0x20t 0x0t
        0x2et 0x0t
        0x45t 0x0t
        0x65t 0x0t
        0x9t 0x0t
        0xdt 0x0t
        0x30t 0x0t
        0x39t 0x0t
        0x20t 0x0t
        0x45t 0x0t
        0x65t 0x0t
        0x9t 0x0t
        0xdt 0x0t
        0x30t 0x0t
        0x39t 0x0t
        0x20t 0x0t
        0x9t 0x0t
        0xdt 0x0t
        0x30t 0x0t
        0x39t 0x0t
        0x20t 0x0t
        0x2ct 0x0t
        0x3at 0x0t
        0x5dt 0x0t
        0x61t 0x0t
        0x7dt 0x0t
        0x9t 0x0t
        0xdt 0x0t
        0x20t 0x0t
        0x2ct 0x0t
        0x3at 0x0t
        0x5dt 0x0t
        0x6ct 0x0t
        0x7dt 0x0t
        0x9t 0x0t
        0xdt 0x0t
        0x20t 0x0t
        0x2ct 0x0t
        0x3at 0x0t
        0x5dt 0x0t
        0x73t 0x0t
        0x7dt 0x0t
        0x9t 0x0t
        0xdt 0x0t
        0x20t 0x0t
        0x2ct 0x0t
        0x3at 0x0t
        0x5dt 0x0t
        0x65t 0x0t
        0x7dt 0x0t
        0x9t 0x0t
        0xdt 0x0t
        0x20t 0x0t
        0x2ct 0x0t
        0x3at 0x0t
        0x5dt 0x0t
        0x7dt 0x0t
        0x9t 0x0t
        0xdt 0x0t
        0x20t 0x0t
        0x2ct 0x0t
        0x3at 0x0t
        0x5dt 0x0t
        0x75t 0x0t
        0x7dt 0x0t
        0x9t 0x0t
        0xdt 0x0t
        0x20t 0x0t
        0x2ct 0x0t
        0x3at 0x0t
        0x5dt 0x0t
        0x6ct 0x0t
        0x7dt 0x0t
        0x9t 0x0t
        0xdt 0x0t
        0x20t 0x0t
        0x2ct 0x0t
        0x3at 0x0t
        0x5dt 0x0t
        0x6ct 0x0t
        0x7dt 0x0t
        0x9t 0x0t
        0xdt 0x0t
        0x20t 0x0t
        0x2ct 0x0t
        0x3at 0x0t
        0x5dt 0x0t
        0x7dt 0x0t
        0x9t 0x0t
        0xdt 0x0t
        0x20t 0x0t
        0x2ct 0x0t
        0x3at 0x0t
        0x5dt 0x0t
        0x72t 0x0t
        0x7dt 0x0t
        0x9t 0x0t
        0xdt 0x0t
        0x20t 0x0t
        0x2ct 0x0t
        0x3at 0x0t
        0x5dt 0x0t
        0x75t 0x0t
        0x7dt 0x0t
        0x9t 0x0t
        0xdt 0x0t
        0x20t 0x0t
        0x2ct 0x0t
        0x3at 0x0t
        0x5dt 0x0t
        0x65t 0x0t
        0x7dt 0x0t
        0x9t 0x0t
        0xdt 0x0t
        0x20t 0x0t
        0x2ct 0x0t
        0x3at 0x0t
        0x5dt 0x0t
        0x7dt 0x0t
        0x9t 0x0t
        0xdt 0x0t
        0x0t 0x0t
    .end array-data
.end method

.method private static init__json_trans_targs_0()[B
    .locals 1

    .prologue
    .line 497
    const/16 v0, 0x26c

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 0x1
        0x1t
        0x2t
        0x4dt
        0x5t
        0x4ct
        0x4dt
        0x51t
        0x56t
        0x5at
        0x4ct
        0x1t
        0x4et
        0x4dt
        0x4dt
        0x0t
        0x4ct
        0x4t
        0x3t
        0x4ct
        0x4t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x0t
        0x4et
        0x0t
        0x4ft
        0x0t
        0x8t
        0x8t
        0x50t
        0x0t
        0x50t
        0x0t
        0x9t
        0xat
        0x12t
        0x11t
        0x13t
        0x12t
        0x5et
        0x9t
        0x14t
        0x12t
        0x12t
        0x0t
        0xct
        0x30t
        0xbt
        0xct
        0x30t
        0xbt
        0xct
        0xdt
        0xct
        0x0t
        0xdt
        0xet
        0x1bt
        0x1ct
        0x10t
        0x1bt
        0x23t
        0x28t
        0x2ct
        0x10t
        0xdt
        0x1dt
        0x1bt
        0x1bt
        0x0t
        0x10t
        0x1at
        0xft
        0x10t
        0x1at
        0xft
        0x10t
        0x11t
        0x5et
        0x10t
        0x0t
        0x11t
        0xat
        0x12t
        0x13t
        0x12t
        0x5et
        0x11t
        0x14t
        0x12t
        0x12t
        0x0t
        0xct
        0x0t
        0xdt
        0x0t
        0x0t
        0xct
        0x12t
        0x14t
        0x0t
        0xct
        0x15t
        0xdt
        0x17t
        0x17t
        0xct
        0x14t
        0x0t
        0x16t
        0x0t
        0xct
        0xdt
        0x17t
        0x17t
        0xct
        0x16t
        0x0t
        0x18t
        0x18t
        0x19t
        0x0t
        0x19t
        0x0t
        0xct
        0xdt
        0xct
        0x19t
        0x0t
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0x0t
        0x10t
        0x11t
        0x0t
        0x0t
        0x5et
        0x10t
        0x1bt
        0x1dt
        0x0t
        0x10t
        0x11t
        0x1et
        0x20t
        0x20t
        0x5et
        0x10t
        0x1dt
        0x0t
        0x1ft
        0x0t
        0x10t
        0x11t
        0x20t
        0x20t
        0x5et
        0x10t
        0x1ft
        0x0t
        0x21t
        0x21t
        0x22t
        0x0t
        0x22t
        0x0t
        0x10t
        0x11t
        0x5et
        0x10t
        0x22t
        0x0t
        0x10t
        0x11t
        0x0t
        0x0t
        0x24t
        0x5et
        0x10t
        0x1bt
        0x10t
        0x11t
        0x0t
        0x0t
        0x25t
        0x5et
        0x10t
        0x1bt
        0x10t
        0x11t
        0x0t
        0x0t
        0x26t
        0x5et
        0x10t
        0x1bt
        0x10t
        0x11t
        0x0t
        0x0t
        0x27t
        0x5et
        0x10t
        0x1bt
        0x10t
        0x11t
        0x0t
        0x0t
        0x5et
        0x10t
        0x1bt
        0x10t
        0x11t
        0x0t
        0x0t
        0x29t
        0x5et
        0x10t
        0x1bt
        0x10t
        0x11t
        0x0t
        0x0t
        0x2at
        0x5et
        0x10t
        0x1bt
        0x10t
        0x11t
        0x0t
        0x0t
        0x2bt
        0x5et
        0x10t
        0x1bt
        0x10t
        0x11t
        0x0t
        0x0t
        0x5et
        0x10t
        0x1bt
        0x10t
        0x11t
        0x0t
        0x0t
        0x2dt
        0x5et
        0x10t
        0x1bt
        0x10t
        0x11t
        0x0t
        0x0t
        0x2et
        0x5et
        0x10t
        0x1bt
        0x10t
        0x11t
        0x0t
        0x0t
        0x2ft
        0x5et
        0x10t
        0x1bt
        0x10t
        0x11t
        0x0t
        0x0t
        0x5et
        0x10t
        0x1bt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0x0t
        0x31t
        0x32t
        0x36t
        0x35t
        0x37t
        0x34t
        0x5ft
        0x36t
        0x3et
        0x43t
        0x47t
        0x34t
        0x31t
        0x38t
        0x36t
        0x36t
        0x0t
        0x34t
        0x4bt
        0x33t
        0x34t
        0x4bt
        0x33t
        0x34t
        0x35t
        0x5ft
        0x34t
        0x0t
        0x35t
        0x32t
        0x36t
        0x37t
        0x34t
        0x5ft
        0x36t
        0x3et
        0x43t
        0x47t
        0x34t
        0x35t
        0x38t
        0x36t
        0x36t
        0x0t
        0x34t
        0x35t
        0x0t
        0x5ft
        0x0t
        0x34t
        0x36t
        0x38t
        0x0t
        0x34t
        0x35t
        0x39t
        0x3bt
        0x5ft
        0x3bt
        0x34t
        0x38t
        0x0t
        0x3at
        0x0t
        0x34t
        0x35t
        0x3bt
        0x5ft
        0x3bt
        0x34t
        0x3at
        0x0t
        0x3ct
        0x3ct
        0x3dt
        0x0t
        0x3dt
        0x0t
        0x34t
        0x35t
        0x5ft
        0x34t
        0x3dt
        0x0t
        0x34t
        0x35t
        0x0t
        0x5ft
        0x3ft
        0x0t
        0x34t
        0x36t
        0x34t
        0x35t
        0x0t
        0x5ft
        0x40t
        0x0t
        0x34t
        0x36t
        0x34t
        0x35t
        0x0t
        0x5ft
        0x41t
        0x0t
        0x34t
        0x36t
        0x34t
        0x35t
        0x0t
        0x5ft
        0x42t
        0x0t
        0x34t
        0x36t
        0x34t
        0x35t
        0x0t
        0x5ft
        0x0t
        0x34t
        0x36t
        0x34t
        0x35t
        0x0t
        0x5ft
        0x44t
        0x0t
        0x34t
        0x36t
        0x34t
        0x35t
        0x0t
        0x5ft
        0x45t
        0x0t
        0x34t
        0x36t
        0x34t
        0x35t
        0x0t
        0x5ft
        0x46t
        0x0t
        0x34t
        0x36t
        0x34t
        0x35t
        0x0t
        0x5ft
        0x0t
        0x34t
        0x36t
        0x34t
        0x35t
        0x0t
        0x5ft
        0x48t
        0x0t
        0x34t
        0x36t
        0x34t
        0x35t
        0x0t
        0x5ft
        0x49t
        0x0t
        0x34t
        0x36t
        0x34t
        0x35t
        0x0t
        0x5ft
        0x4at
        0x0t
        0x34t
        0x36t
        0x34t
        0x35t
        0x0t
        0x5ft
        0x0t
        0x34t
        0x36t
        0x33t
        0x33t
        0x33t
        0x33t
        0x33t
        0x33t
        0x33t
        0x33t
        0x0t
        0x4ct
        0x4ct
        0x0t
        0x4ct
        0x0t
        0x0t
        0x0t
        0x0t
        0x4ct
        0x4dt
        0x4ct
        0x6t
        0x7t
        0x7t
        0x4ct
        0x4et
        0x0t
        0x4ct
        0x7t
        0x7t
        0x4ct
        0x4ft
        0x0t
        0x4ct
        0x4ct
        0x50t
        0x0t
        0x4ct
        0x0t
        0x0t
        0x0t
        0x52t
        0x0t
        0x4ct
        0x4dt
        0x4ct
        0x0t
        0x0t
        0x0t
        0x53t
        0x0t
        0x4ct
        0x4dt
        0x4ct
        0x0t
        0x0t
        0x0t
        0x54t
        0x0t
        0x4ct
        0x4dt
        0x4ct
        0x0t
        0x0t
        0x0t
        0x55t
        0x0t
        0x4ct
        0x4dt
        0x4ct
        0x0t
        0x0t
        0x0t
        0x0t
        0x4ct
        0x4dt
        0x4ct
        0x0t
        0x0t
        0x0t
        0x57t
        0x0t
        0x4ct
        0x4dt
        0x4ct
        0x0t
        0x0t
        0x0t
        0x58t
        0x0t
        0x4ct
        0x4dt
        0x4ct
        0x0t
        0x0t
        0x0t
        0x59t
        0x0t
        0x4ct
        0x4dt
        0x4ct
        0x0t
        0x0t
        0x0t
        0x0t
        0x4ct
        0x4dt
        0x4ct
        0x0t
        0x0t
        0x0t
        0x5bt
        0x0t
        0x4ct
        0x4dt
        0x4ct
        0x0t
        0x0t
        0x0t
        0x5ct
        0x0t
        0x4ct
        0x4dt
        0x4ct
        0x0t
        0x0t
        0x0t
        0x5dt
        0x0t
        0x4ct
        0x4dt
        0x4ct
        0x0t
        0x0t
        0x0t
        0x0t
        0x4ct
        0x4dt
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 565
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->current:Ljava/lang/Object;

    instance-of v0, v0, Lcom/badlogic/gdx/utils/OrderedMap;

    if-eqz v0, :cond_0

    .line 566
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->current:Ljava/lang/Object;

    check-cast v0, Lcom/badlogic/gdx/utils/OrderedMap;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/utils/OrderedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    :goto_0
    return-void

    .line 567
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->current:Ljava/lang/Object;

    instance-of v0, v0, Lcom/badlogic/gdx/utils/Array;

    if-eqz v0, :cond_1

    .line 568
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->current:Ljava/lang/Object;

    check-cast v0, Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 570
    :cond_1
    iput-object p2, p0, Lcom/badlogic/gdx/utils/JsonReader;->root:Ljava/lang/Object;

    goto :goto_0
.end method

.method private unescape(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    .line 605
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 606
    new-instance v4, Lcom/badlogic/gdx/utils/StringBuilder;

    add-int/lit8 v0, v3, 0x10

    invoke-direct {v4, v0}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(I)V

    .line 607
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_2

    .line 608
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 609
    const/16 v2, 0x5c

    if-eq v0, v2, :cond_0

    .line 610
    invoke-virtual {v4, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    move v0, v1

    .line 611
    goto :goto_0

    .line 613
    :cond_0
    if-eq v1, v3, :cond_2

    .line 614
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 615
    const/16 v1, 0x75

    if-ne v0, v1, :cond_1

    .line 616
    add-int/lit8 v0, v2, 0x4

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append([C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 617
    add-int/lit8 v0, v2, 0x4

    .line 618
    goto :goto_0

    .line 620
    :cond_1
    sparse-switch v0, :sswitch_data_0

    .line 641
    new-instance v1, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Illegal escaped character: \\"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 626
    :sswitch_0
    const/16 v0, 0x8

    .line 643
    :goto_1
    :sswitch_1
    invoke-virtual {v4, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    move v0, v2

    .line 644
    goto :goto_0

    .line 629
    :sswitch_2
    const/16 v0, 0xc

    .line 630
    goto :goto_1

    .line 632
    :sswitch_3
    const/16 v0, 0xa

    .line 633
    goto :goto_1

    .line 635
    :sswitch_4
    const/16 v0, 0xd

    .line 636
    goto :goto_1

    .line 638
    :sswitch_5
    const/16 v0, 0x9

    .line 639
    goto :goto_1

    .line 645
    :cond_2
    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 620
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_1
        0x2f -> :sswitch_1
        0x5c -> :sswitch_1
        0x62 -> :sswitch_0
        0x66 -> :sswitch_2
        0x6e -> :sswitch_3
        0x72 -> :sswitch_4
        0x74 -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method protected bool(Ljava/lang/String;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 601
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/utils/JsonReader;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 602
    return-void
.end method

.method protected number(Ljava/lang/String;F)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 597
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/utils/JsonReader;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 598
    return-void
.end method

.method public parse(Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;
    .locals 4
    .parameter

    .prologue
    .line 76
    :try_start_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/files/FileHandle;->read()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/JsonReader;->parse(Ljava/io/InputStream;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 77
    :catch_0
    move-exception v0

    .line 78
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

.method public parse(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    .line 68
    :try_start_0
    new-instance v0, Ljava/io/InputStreamReader;

    const-string/jumbo v1, "ISO-8859-1"

    invoke-direct {v0, p1, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/JsonReader;->parse(Ljava/io/Reader;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 69
    :catch_0
    move-exception v0

    .line 70
    new-instance v1, Lcom/badlogic/gdx/utils/SerializationException;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public parse(Ljava/io/Reader;)Ljava/lang/Object;
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 43
    const/16 v1, 0x400

    :try_start_0
    new-array v1, v1, [C

    .line 46
    :goto_0
    array-length v2, v1

    sub-int/2addr v2, v0

    invoke-virtual {p1, v1, v0, v2}, Ljava/io/Reader;->read([CII)I

    move-result v2

    .line 47
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 48
    if-nez v2, :cond_0

    .line 49
    array-length v2, v1

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [C

    .line 50
    const/4 v3, 0x0

    const/4 v4, 0x0

    array-length v5, v1

    invoke-static {v1, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v2

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    add-int/2addr v0, v2

    .line 54
    goto :goto_0

    .line 55
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/badlogic/gdx/utils/JsonReader;->parse([CII)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 60
    :try_start_1
    invoke-virtual {p1}, Ljava/io/Reader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 62
    :goto_1
    return-object v0

    .line 56
    :catch_0
    move-exception v0

    .line 57
    :try_start_2
    new-instance v1, Lcom/badlogic/gdx/utils/SerializationException;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 59
    :catchall_0
    move-exception v0

    .line 60
    :try_start_3
    invoke-virtual {p1}, Ljava/io/Reader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 62
    :goto_2
    throw v0

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_2
.end method

.method public parse(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .parameter

    .prologue
    .line 37
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 38
    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/utils/JsonReader;->parse([CII)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public parse([CII)Ljava/lang/Object;
    .locals 20
    .parameter
    .parameter
    .parameter

    .prologue
    .line 83
    .line 84
    const/4 v2, 0x4

    new-array v9, v2, [I

    .line 86
    const/4 v7, 0x0

    .line 87
    new-instance v14, Lcom/badlogic/gdx/utils/Array;

    const/16 v2, 0x8

    invoke-direct {v14, v2}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    .line 88
    const/4 v4, 0x0

    .line 89
    const/4 v6, 0x0

    .line 90
    const/4 v5, 0x0

    .line 92
    const/4 v8, 0x1

    .line 100
    const/4 v3, 0x0

    .line 110
    const/4 v2, 0x0

    move v13, v3

    move/from16 v3, p2

    move/from16 v19, v2

    move v2, v4

    move v4, v8

    move/from16 v8, v19

    .line 114
    :goto_0
    packed-switch v8, :pswitch_data_0

    :pswitch_0
    move v2, v3

    :goto_1
    move-object v4, v5

    move v5, v2

    .line 407
    :goto_2
    move/from16 v0, p3

    if-ge v5, v0, :cond_1f

    .line 408
    const/4 v3, 0x1

    .line 409
    const/4 v2, 0x0

    move/from16 v19, v2

    move v2, v3

    move/from16 v3, v19

    :goto_3
    if-ge v3, v5, :cond_1e

    .line 410
    aget-char v6, p1, v3

    const/16 v7, 0xa

    if-ne v6, v7, :cond_0

    add-int/lit8 v2, v2, 0x1

    .line 409
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 116
    :pswitch_1
    move/from16 v0, p3

    if-ne v3, v0, :cond_1

    .line 117
    const/4 v8, 0x4

    .line 118
    goto :goto_0

    .line 120
    :cond_1
    if-nez v4, :cond_2

    .line 121
    const/4 v8, 0x5

    .line 122
    goto :goto_0

    .line 127
    :cond_2
    :pswitch_2
    :try_start_0
    sget-object v8, Lcom/badlogic/gdx/utils/JsonReader;->_json_key_offsets:[S

    aget-short v11, v8, v4

    .line 128
    sget-object v8, Lcom/badlogic/gdx/utils/JsonReader;->_json_index_offsets:[S

    aget-short v8, v8, v4

    .line 129
    sget-object v10, Lcom/badlogic/gdx/utils/JsonReader;->_json_single_lengths:[B

    aget-byte v15, v10, v4

    .line 130
    if-lez v15, :cond_7

    .line 133
    add-int v10, v11, v15

    add-int/lit8 v10, v10, -0x1

    move v12, v11

    .line 135
    :goto_4
    if-lt v10, v12, :cond_6

    .line 137
    sub-int v16, v10, v12

    shr-int/lit8 v16, v16, 0x1

    add-int v16, v16, v12

    .line 138
    aget-char v17, p1, v3

    sget-object v18, Lcom/badlogic/gdx/utils/JsonReader;->_json_trans_keys:[C

    aget-char v18, v18, v16

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_3

    .line 139
    add-int/lit8 v10, v16, -0x1

    goto :goto_4

    .line 140
    :cond_3
    aget-char v12, p1, v3

    sget-object v17, Lcom/badlogic/gdx/utils/JsonReader;->_json_trans_keys:[C

    aget-char v17, v17, v16

    move/from16 v0, v17

    if-le v12, v0, :cond_4

    .line 141
    add-int/lit8 v12, v16, 0x1

    goto :goto_4

    .line 143
    :cond_4
    sub-int v4, v16, v11

    add-int/2addr v4, v8

    .line 173
    :goto_5
    sget-object v8, Lcom/badlogic/gdx/utils/JsonReader;->_json_trans_targs:[B

    aget-byte v8, v8, v4

    .line 175
    sget-object v10, Lcom/badlogic/gdx/utils/JsonReader;->_json_trans_actions:[B

    aget-byte v10, v10, v4

    if-eqz v10, :cond_15

    .line 176
    sget-object v10, Lcom/badlogic/gdx/utils/JsonReader;->_json_trans_actions:[B

    aget-byte v4, v10, v4

    .line 177
    sget-object v11, Lcom/badlogic/gdx/utils/JsonReader;->_json_actions:[B

    add-int/lit8 v10, v4, 0x1

    aget-byte v4, v11, v4

    move v11, v10

    move/from16 v19, v4

    move v4, v2

    move/from16 v2, v19

    .line 178
    :goto_6
    add-int/lit8 v10, v2, -0x1

    if-lez v2, :cond_14

    .line 179
    sget-object v2, Lcom/badlogic/gdx/utils/JsonReader;->_json_actions:[B

    add-int/lit8 v12, v11, 0x1

    aget-byte v2, v2, v11

    packed-switch v2, :pswitch_data_1

    :cond_5
    move v2, v10

    move v11, v12

    .line 316
    goto :goto_6

    .line 147
    :cond_6
    add-int/2addr v11, v15

    .line 148
    add-int/2addr v8, v15

    .line 151
    :cond_7
    sget-object v10, Lcom/badlogic/gdx/utils/JsonReader;->_json_range_lengths:[B

    aget-byte v12, v10, v4

    .line 152
    if-lez v12, :cond_26

    .line 155
    shl-int/lit8 v4, v12, 0x1

    add-int/2addr v4, v11

    add-int/lit8 v4, v4, -0x2

    move v10, v11

    .line 157
    :goto_7
    if-lt v4, v10, :cond_a

    .line 159
    sub-int v15, v4, v10

    shr-int/lit8 v15, v15, 0x1

    and-int/lit8 v15, v15, -0x2

    add-int/2addr v15, v10

    .line 160
    aget-char v16, p1, v3

    sget-object v17, Lcom/badlogic/gdx/utils/JsonReader;->_json_trans_keys:[C

    aget-char v17, v17, v15

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_8

    .line 161
    add-int/lit8 v4, v15, -0x2

    goto :goto_7

    .line 162
    :cond_8
    aget-char v10, p1, v3

    sget-object v16, Lcom/badlogic/gdx/utils/JsonReader;->_json_trans_keys:[C

    add-int/lit8 v17, v15, 0x1

    aget-char v16, v16, v17

    move/from16 v0, v16

    if-le v10, v0, :cond_9

    .line 163
    add-int/lit8 v10, v15, 0x2

    goto :goto_7

    .line 165
    :cond_9
    sub-int v4, v15, v11

    shr-int/lit8 v4, v4, 0x1

    add-int/2addr v4, v8

    .line 166
    goto :goto_5

    .line 169
    :cond_a
    add-int v4, v8, v12

    goto :goto_5

    .line 184
    :pswitch_3
    const/4 v4, 0x0

    .line 185
    const/4 v6, 0x0

    move v2, v10

    move v11, v12

    move v7, v3

    .line 187
    goto :goto_6

    .line 191
    :pswitch_4
    const/4 v4, 0x1

    move v2, v10

    move v11, v12

    .line 193
    goto :goto_6

    .line 197
    :pswitch_5
    new-instance v2, Ljava/lang/String;

    sub-int v11, v3, v7

    move-object/from16 v0, p1

    invoke-direct {v2, v0, v7, v11}, Ljava/lang/String;-><init>([CII)V

    .line 199
    if-eqz v4, :cond_b

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/badlogic/gdx/utils/JsonReader;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 200
    :cond_b
    invoke-virtual {v14, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    move v2, v10

    move v11, v12

    move v7, v3

    .line 203
    goto :goto_6

    .line 207
    :pswitch_6
    if-nez v6, :cond_5

    .line 208
    new-instance v2, Ljava/lang/String;

    sub-int v11, v3, v7

    move-object/from16 v0, p1

    invoke-direct {v2, v0, v7, v11}, Ljava/lang/String;-><init>([CII)V

    .line 210
    if-eqz v4, :cond_25

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/badlogic/gdx/utils/JsonReader;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v7, v2

    .line 211
    :goto_8
    iget v2, v14, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v2, :cond_c

    invoke-virtual {v14}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 212
    :goto_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v7}, Lcom/badlogic/gdx/utils/JsonReader;->string(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v10

    move v11, v12

    move v7, v3

    .line 214
    goto/16 :goto_6

    .line 211
    :cond_c
    const/4 v2, 0x0

    goto :goto_9

    .line 220
    :pswitch_7
    new-instance v11, Ljava/lang/String;

    sub-int v2, v3, v7

    move-object/from16 v0, p1

    invoke-direct {v11, v0, v7, v2}, Ljava/lang/String;-><init>([CII)V

    .line 222
    iget v2, v14, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v2, :cond_d

    invoke-virtual {v14}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 223
    :goto_a
    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v7}, Lcom/badlogic/gdx/utils/JsonReader;->number(Ljava/lang/String;F)V

    move v2, v10

    move v11, v12

    move v7, v3

    .line 226
    goto/16 :goto_6

    .line 222
    :cond_d
    const/4 v2, 0x0

    goto :goto_a

    .line 230
    :pswitch_8
    iget v2, v14, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v2, :cond_e

    invoke-virtual {v14}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 231
    :goto_b
    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6}, Lcom/badlogic/gdx/utils/JsonReader;->bool(Ljava/lang/String;Z)V

    .line 233
    const/4 v6, 0x1

    move v2, v10

    move v11, v12

    .line 235
    goto/16 :goto_6

    .line 230
    :cond_e
    const/4 v2, 0x0

    goto :goto_b

    .line 239
    :pswitch_9
    iget v2, v14, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v2, :cond_f

    invoke-virtual {v14}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 240
    :goto_c
    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6}, Lcom/badlogic/gdx/utils/JsonReader;->bool(Ljava/lang/String;Z)V

    .line 242
    const/4 v6, 0x1

    move v2, v10

    move v11, v12

    .line 244
    goto/16 :goto_6

    .line 239
    :cond_f
    const/4 v2, 0x0

    goto :goto_c

    .line 248
    :pswitch_a
    iget v2, v14, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v2, :cond_10

    invoke-virtual {v14}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 249
    :goto_d
    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6}, Lcom/badlogic/gdx/utils/JsonReader;->string(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    const/4 v6, 0x1

    move v2, v10

    move v11, v12

    .line 253
    goto/16 :goto_6

    .line 248
    :cond_10
    const/4 v2, 0x0

    goto :goto_d

    .line 257
    :pswitch_b
    iget v2, v14, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v2, :cond_12

    invoke-virtual {v14}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 258
    :goto_e
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/JsonReader;->startObject(Ljava/lang/String;)V

    .line 261
    array-length v2, v9

    if-ne v13, v2, :cond_11

    .line 262
    array-length v2, v9

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [I

    .line 263
    const/4 v10, 0x0

    const/4 v11, 0x0

    array-length v12, v9

    invoke-static {v9, v10, v2, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v9, v2

    .line 267
    :cond_11
    add-int/lit8 v10, v13, 0x1

    aput v8, v9, v13

    .line 268
    const/16 v8, 0x9

    .line 269
    const/4 v2, 0x2

    move v13, v10

    move/from16 v19, v4

    move v4, v8

    move v8, v2

    move/from16 v2, v19

    .line 270
    goto/16 :goto_0

    .line 257
    :cond_12
    const/4 v2, 0x0

    goto :goto_e

    .line 278
    :pswitch_c
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/utils/JsonReader;->pop()V

    .line 281
    add-int/lit8 v8, v13, -0x1

    aget v10, v9, v8

    .line 282
    const/4 v2, 0x2

    move v13, v8

    move v8, v2

    move v2, v4

    move v4, v10

    .line 283
    goto/16 :goto_0

    .line 290
    :pswitch_d
    iget v2, v14, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v2, :cond_13

    invoke-virtual {v14}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 291
    :goto_f
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/JsonReader;->startArray(Ljava/lang/String;)V

    .line 294
    array-length v2, v9

    if-ne v13, v2, :cond_24

    .line 295
    array-length v2, v9

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [I

    .line 296
    const/4 v10, 0x0

    const/4 v11, 0x0

    array-length v12, v9

    invoke-static {v9, v10, v2, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 300
    :goto_10
    add-int/lit8 v9, v13, 0x1

    aput v8, v2, v13

    .line 301
    const/16 v10, 0x31

    .line 302
    const/4 v8, 0x2

    move v13, v9

    move-object v9, v2

    move v2, v4

    move v4, v10

    .line 303
    goto/16 :goto_0

    .line 290
    :cond_13
    const/4 v2, 0x0

    goto :goto_f

    .line 311
    :pswitch_e
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/utils/JsonReader;->pop()V

    .line 314
    add-int/lit8 v8, v13, -0x1

    aget v10, v9, v8
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    const/4 v2, 0x2

    move v13, v8

    move v8, v2

    move v2, v4

    move v4, v10

    .line 316
    goto/16 :goto_0

    :cond_14
    move v2, v4

    .line 326
    :cond_15
    :goto_11
    if-nez v8, :cond_16

    .line 327
    const/4 v4, 0x5

    move/from16 v19, v4

    move v4, v8

    move/from16 v8, v19

    .line 328
    goto/16 :goto_0

    .line 330
    :cond_16
    add-int/lit8 v4, v3, 0x1

    move/from16 v0, p3

    if-eq v4, v0, :cond_17

    .line 331
    const/4 v3, 0x1

    move/from16 v19, v3

    move v3, v4

    move v4, v8

    move/from16 v8, v19

    .line 332
    goto/16 :goto_0

    :cond_17
    move v10, v2

    move v2, v8

    .line 335
    :goto_12
    move/from16 v0, p3

    if-ne v4, v0, :cond_23

    .line 336
    :try_start_1
    sget-object v3, Lcom/badlogic/gdx/utils/JsonReader;->_json_eof_actions:[B

    aget-byte v2, v3, v2

    .line 337
    sget-object v8, Lcom/badlogic/gdx/utils/JsonReader;->_json_actions:[B

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, v8, v2

    move v9, v7

    move/from16 v19, v6

    move v6, v3

    move/from16 v3, v19

    .line 338
    :goto_13
    add-int/lit8 v7, v2, -0x1

    if-lez v2, :cond_23

    .line 339
    sget-object v2, Lcom/badlogic/gdx/utils/JsonReader;->_json_actions:[B

    add-int/lit8 v8, v6, 0x1

    aget-byte v2, v2, v6

    packed-switch v2, :pswitch_data_2

    :cond_18
    move v2, v3

    :goto_14
    move v6, v8

    move v3, v2

    move v2, v7

    .line 389
    goto :goto_13

    .line 343
    :pswitch_f
    if-nez v3, :cond_18

    .line 344
    new-instance v2, Ljava/lang/String;

    sub-int v6, v4, v9

    move-object/from16 v0, p1

    invoke-direct {v2, v0, v9, v6}, Ljava/lang/String;-><init>([CII)V

    .line 346
    if-eqz v10, :cond_22

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/badlogic/gdx/utils/JsonReader;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v6, v2

    .line 347
    :goto_15
    iget v2, v14, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v2, :cond_19

    invoke-virtual {v14}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 348
    :goto_16
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6}, Lcom/badlogic/gdx/utils/JsonReader;->string(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v7

    move v6, v8

    move v9, v4

    .line 350
    goto :goto_13

    .line 347
    :cond_19
    const/4 v2, 0x0

    goto :goto_16

    .line 356
    :pswitch_10
    new-instance v6, Ljava/lang/String;

    sub-int v2, v4, v9

    move-object/from16 v0, p1

    invoke-direct {v6, v0, v9, v2}, Ljava/lang/String;-><init>([CII)V

    .line 358
    iget v2, v14, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v2, :cond_1a

    invoke-virtual {v14}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 359
    :goto_17
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6}, Lcom/badlogic/gdx/utils/JsonReader;->number(Ljava/lang/String;F)V

    move v2, v7

    move v6, v8

    move v9, v4

    .line 362
    goto :goto_13

    .line 358
    :cond_1a
    const/4 v2, 0x0

    goto :goto_17

    .line 366
    :pswitch_11
    iget v2, v14, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v2, :cond_1b

    invoke-virtual {v14}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 367
    :goto_18
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/badlogic/gdx/utils/JsonReader;->bool(Ljava/lang/String;Z)V

    .line 369
    const/4 v3, 0x1

    move v2, v7

    move v6, v8

    .line 371
    goto :goto_13

    .line 366
    :cond_1b
    const/4 v2, 0x0

    goto :goto_18

    .line 375
    :pswitch_12
    iget v2, v14, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v2, :cond_1c

    invoke-virtual {v14}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 376
    :goto_19
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/badlogic/gdx/utils/JsonReader;->bool(Ljava/lang/String;Z)V

    .line 378
    const/4 v3, 0x1

    move v2, v7

    move v6, v8

    .line 380
    goto/16 :goto_13

    .line 375
    :cond_1c
    const/4 v2, 0x0

    goto :goto_19

    .line 384
    :pswitch_13
    iget v2, v14, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v2, :cond_1d

    invoke-virtual {v14}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 385
    :goto_1a
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/badlogic/gdx/utils/JsonReader;->string(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 387
    const/4 v2, 0x1

    goto/16 :goto_14

    .line 384
    :cond_1d
    const/4 v2, 0x0

    goto :goto_1a

    .line 403
    :catch_0
    move-exception v2

    :goto_1b
    move-object v4, v2

    move v5, v3

    goto/16 :goto_2

    .line 411
    :cond_1e
    new-instance v3, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Error parsing JSON on line "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, " near: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v6, Ljava/lang/String;

    sub-int v7, p3, v5

    move-object/from16 v0, p1

    invoke-direct {v6, v0, v5, v7}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2, v4}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 413
    :cond_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/utils/JsonReader;->elements:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eqz v2, :cond_21

    .line 414
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/utils/JsonReader;->elements:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->peek()Ljava/lang/Object;

    move-result-object v2

    .line 415
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/utils/JsonReader;->elements:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 416
    instance-of v2, v2, Lcom/badlogic/gdx/utils/OrderedMap;

    if-eqz v2, :cond_20

    .line 417
    new-instance v2, Lcom/badlogic/gdx/utils/SerializationException;

    const-string/jumbo v3, "Error parsing JSON, unmatched brace."

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 419
    :cond_20
    new-instance v2, Lcom/badlogic/gdx/utils/SerializationException;

    const-string/jumbo v3, "Error parsing JSON, unmatched bracket."

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 421
    :cond_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/utils/JsonReader;->root:Ljava/lang/Object;

    .line 422
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/badlogic/gdx/utils/JsonReader;->root:Ljava/lang/Object;

    .line 423
    return-object v2

    .line 403
    :catch_1
    move-exception v2

    move v3, v4

    goto :goto_1b

    :cond_22
    move-object v6, v2

    goto/16 :goto_15

    :cond_23
    move v2, v4

    goto/16 :goto_1

    :cond_24
    move-object v2, v9

    goto/16 :goto_10

    :cond_25
    move-object v7, v2

    goto/16 :goto_8

    :cond_26
    move v4, v8

    goto/16 :goto_5

    :pswitch_14
    move v10, v2

    move v2, v4

    move v4, v3

    goto/16 :goto_12

    :pswitch_15
    move v8, v4

    goto/16 :goto_11

    .line 114
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_15
        :pswitch_0
        :pswitch_14
    .end packed-switch

    .line 179
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch

    .line 339
    :pswitch_data_2
    .packed-switch 0x3
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch
.end method

.method protected pop()V
    .locals 1

    .prologue
    .line 588
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->elements:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->root:Ljava/lang/Object;

    .line 589
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->elements:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->elements:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->peek()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->current:Ljava/lang/Object;

    .line 590
    return-void

    .line 589
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected startArray(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 581
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    .line 582
    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonReader;->current:Ljava/lang/Object;

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/utils/JsonReader;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 583
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonReader;->elements:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 584
    iput-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->current:Ljava/lang/Object;

    .line 585
    return-void
.end method

.method protected startObject(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 574
    new-instance v0, Lcom/badlogic/gdx/utils/OrderedMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/OrderedMap;-><init>()V

    .line 575
    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonReader;->current:Ljava/lang/Object;

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/utils/JsonReader;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 576
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonReader;->elements:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 577
    iput-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->current:Ljava/lang/Object;

    .line 578
    return-void
.end method

.method protected string(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 593
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/utils/JsonReader;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 594
    return-void
.end method

.class final Lcom/google/a/e/af;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic a:Z

.field private static final b:Lcom/google/a/e/ai;

.field private static final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    const-class v0, Lcom/google/a/e/af;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/a/e/af;->a:Z

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/google/a/e/af;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "$UnsafeByteArray"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/a/e/af;->c:Ljava/lang/String;

    .line 228
    :try_start_0
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/a/e/aj;->a:Lcom/google/a/e/aj;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    :goto_1
    sput-object v0, Lcom/google/a/e/af;->b:Lcom/google/a/e/ai;

    .line 235
    return-void

    .line 16
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 228
    :cond_1
    :try_start_1
    sget-object v0, Lcom/google/a/e/aj;->b:Lcom/google/a/e/aj;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 232
    :catch_0
    move-exception v0

    sget-object v0, Lcom/google/a/e/ag;->a:Lcom/google/a/e/ag;

    goto :goto_1
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a([BI)J
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 32
    sget-boolean v0, Lcom/google/a/e/af;->a:Z

    if-nez v0, :cond_0

    array-length v0, p0

    add-int/lit8 v1, p1, 0x8

    if-ge v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 34
    :cond_0
    sget-object v0, Lcom/google/a/e/af;->b:Lcom/google/a/e/ai;

    invoke-interface {v0, p0, p1}, Lcom/google/a/e/ai;->a([BI)J

    move-result-wide v0

    return-wide v0
.end method

.method static a([BIJ)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 69
    sget-boolean v0, Lcom/google/a/e/af;->a:Z

    if-nez v0, :cond_1

    if-ltz p1, :cond_0

    add-int/lit8 v0, p1, 0x8

    array-length v1, p0

    if-le v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 71
    :cond_1
    sget-object v0, Lcom/google/a/e/af;->b:Lcom/google/a/e/ai;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/google/a/e/ai;->a([BIJ)V

    .line 72
    return-void
.end method

.method static a()Z
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lcom/google/a/e/af;->b:Lcom/google/a/e/ai;

    instance-of v0, v0, Lcom/google/a/e/aj;

    return v0
.end method

.method static b([BI)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 83
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

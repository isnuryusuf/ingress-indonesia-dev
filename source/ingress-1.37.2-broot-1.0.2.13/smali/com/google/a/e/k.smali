.class abstract enum Lcom/google/a/e/k;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/a/e/n;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/a/e/k;",
        ">;",
        "Lcom/google/a/e/n;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/a/e/k;

.field public static final enum b:Lcom/google/a/e/k;

.field private static final synthetic c:[Lcom/google/a/e/k;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 111
    new-instance v0, Lcom/google/a/e/l;

    const-string/jumbo v1, "UsingUnsafe"

    invoke-direct {v0, v1}, Lcom/google/a/e/l;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/a/e/k;->a:Lcom/google/a/e/k;

    .line 200
    new-instance v0, Lcom/google/a/e/m;

    const-string/jumbo v1, "UsingByteBuffer"

    invoke-direct {v0, v1}, Lcom/google/a/e/m;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/a/e/k;->b:Lcom/google/a/e/k;

    .line 106
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/a/e/k;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/a/e/k;->a:Lcom/google/a/e/k;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/google/a/e/k;->b:Lcom/google/a/e/k;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/a/e/k;->c:[Lcom/google/a/e/k;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 106
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IB)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 106
    invoke-direct {p0, p1, p2}, Lcom/google/a/e/k;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/a/e/k;
    .locals 1
    .parameter

    .prologue
    .line 106
    const-class v0, Lcom/google/a/e/k;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/a/e/k;

    return-object v0
.end method

.method public static values()[Lcom/google/a/e/k;
    .locals 1

    .prologue
    .line 106
    sget-object v0, Lcom/google/a/e/k;->c:[Lcom/google/a/e/k;

    invoke-virtual {v0}, [Lcom/google/a/e/k;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/a/e/k;

    return-object v0
.end method


# virtual methods
.method protected abstract a([BIIJJ)Lcom/google/a/e/u;
.end method

.method public final a([BII[J)Lcom/google/a/e/u;
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide v6, -0x5a47a3a1e67127b7L

    const-wide v4, -0x72a753d9501ed1b9L

    const/16 v8, 0x8

    const/4 v3, 0x0

    .line 307
    if-nez p4, :cond_2

    .line 309
    const/16 v0, 0x10

    if-lt p3, v0, :cond_0

    .line 310
    invoke-static {p1, v3}, Lcom/google/a/e/af;->a([BI)J

    move-result-wide v0

    const-wide v2, -0x38f096f8187d55f5L

    xor-long v6, v0, v2

    .line 311
    invoke-static {p1, v8}, Lcom/google/a/e/af;->a([BI)J

    move-result-wide v4

    .line 312
    add-int/lit8 p2, p2, 0x10

    .line 313
    add-int/lit8 p3, p3, -0x10

    move v3, p3

    move v2, p2

    :goto_0
    move-object v0, p0

    move-object v1, p1

    .line 327
    invoke-virtual/range {v0 .. v7}, Lcom/google/a/e/k;->a([BIIJJ)Lcom/google/a/e/u;

    move-result-object v0

    return-object v0

    .line 314
    :cond_0
    if-lt p3, v8, :cond_1

    .line 315
    invoke-static {p1, v3}, Lcom/google/a/e/af;->a([BI)J

    move-result-wide v0

    int-to-long v8, p3

    mul-long/2addr v6, v8

    xor-long/2addr v6, v0

    .line 316
    add-int/lit8 v0, p3, -0x8

    invoke-static {p1, v0}, Lcom/google/a/e/af;->a([BI)J

    move-result-wide v0

    xor-long/2addr v4, v0

    move v2, p2

    .line 317
    goto :goto_0

    :cond_1
    move v3, p3

    move v2, p2

    .line 320
    goto :goto_0

    .line 323
    :cond_2
    aget-wide v6, p4, v3

    .line 324
    const/4 v0, 0x1

    aget-wide v4, p4, v0

    move v3, p3

    move v2, p2

    goto :goto_0
.end method

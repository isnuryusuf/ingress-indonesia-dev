.class abstract enum Lcom/google/a/e/ac;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/a/a/bs;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/a/e/ac;",
        ">;",
        "Lcom/google/a/a/bs",
        "<",
        "Ljava/util/zip/Checksum;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/a/e/ac;

.field public static final enum b:Lcom/google/a/e/ac;

.field private static final synthetic d:[Lcom/google/a/e/ac;


# instance fields
.field private final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 279
    new-instance v0, Lcom/google/a/e/ad;

    const-string/jumbo v1, "CRC_32"

    invoke-direct {v0, v1}, Lcom/google/a/e/ad;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/a/e/ac;->a:Lcom/google/a/e/ac;

    .line 285
    new-instance v0, Lcom/google/a/e/ae;

    const-string/jumbo v1, "ADLER_32"

    invoke-direct {v0, v1}, Lcom/google/a/e/ae;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/a/e/ac;->b:Lcom/google/a/e/ac;

    .line 278
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/a/e/ac;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/a/e/ac;->a:Lcom/google/a/e/ac;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/google/a/e/ac;->b:Lcom/google/a/e/ac;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/a/e/ac;->d:[Lcom/google/a/e/ac;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 294
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 295
    const/16 v0, 0x20

    iput v0, p0, Lcom/google/a/e/ac;->c:I

    .line 296
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IB)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 278
    invoke-direct {p0, p1, p2}, Lcom/google/a/e/ac;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Lcom/google/a/e/ac;)I
    .locals 1
    .parameter

    .prologue
    .line 278
    iget v0, p0, Lcom/google/a/e/ac;->c:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/a/e/ac;
    .locals 1
    .parameter

    .prologue
    .line 278
    const-class v0, Lcom/google/a/e/ac;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/a/e/ac;

    return-object v0
.end method

.method public static values()[Lcom/google/a/e/ac;
    .locals 1

    .prologue
    .line 278
    sget-object v0, Lcom/google/a/e/ac;->d:[Lcom/google/a/e/ac;

    invoke-virtual {v0}, [Lcom/google/a/e/ac;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/a/e/ac;

    return-object v0
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 278
    invoke-virtual {p0}, Lcom/google/a/e/ac;->b()Ljava/util/zip/Checksum;

    move-result-object v0

    return-object v0
.end method

.method public abstract b()Ljava/util/zip/Checksum;
.end method

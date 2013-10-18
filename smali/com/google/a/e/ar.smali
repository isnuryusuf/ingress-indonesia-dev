.class final Lcom/google/a/e/ar;
.super Lcom/google/a/e/f;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final a:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .parameter

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/google/a/e/f;-><init>()V

    .line 52
    iput p1, p0, Lcom/google/a/e/ar;->a:I

    .line 53
    return-void
.end method

.method static synthetic a(I)I
    .locals 2
    .parameter

    .prologue
    .line 45
    const v0, -0x3361d2af

    mul-int/2addr v0, p0

    const/16 v1, 0xf

    invoke-static {v0, v1}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v0

    const v1, 0x1b873593

    mul-int/2addr v0, v1

    return v0
.end method

.method static synthetic a(II)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 45
    xor-int v0, p0, p1

    const/16 v1, 0xd

    invoke-static {v0, v1}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v0

    mul-int/lit8 v0, v0, 0x5

    const v1, -0x19ab949c

    add-int/2addr v0, v1

    return v0
.end method

.method static synthetic b(II)Lcom/google/a/e/u;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 45
    xor-int v0, p0, p1

    ushr-int/lit8 v1, v0, 0x10

    xor-int/2addr v0, v1

    const v1, -0x7a143595

    mul-int/2addr v0, v1

    ushr-int/lit8 v1, v0, 0xd

    xor-int/2addr v0, v1

    const v1, -0x3d4d51cb

    mul-int/2addr v0, v1

    ushr-int/lit8 v1, v0, 0x10

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/a/e/v;->a(I)Lcom/google/a/e/u;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/google/a/e/aa;
    .locals 2

    .prologue
    .line 60
    new-instance v0, Lcom/google/a/e/as;

    iget v1, p0, Lcom/google/a/e/ar;->a:I

    invoke-direct {v0, v1}, Lcom/google/a/e/as;-><init>(I)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Hashing.murmur3_32("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/google/a/e/ar;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

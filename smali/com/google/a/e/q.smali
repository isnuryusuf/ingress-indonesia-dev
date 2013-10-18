.class final Lcom/google/a/e/q;
.super Lcom/google/a/e/f;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/google/a/e/f;-><init>()V

    .line 45
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/a/e/aa;
    .locals 2

    .prologue
    .line 37
    new-instance v0, Lcom/google/a/e/r;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/a/e/r;-><init>(B)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    const-string/jumbo v0, "Hashing.crc8()"

    return-object v0
.end method

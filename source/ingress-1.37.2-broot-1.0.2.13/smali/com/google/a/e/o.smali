.class final Lcom/google/a/e/o;
.super Lcom/google/a/e/f;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/google/a/e/f;-><init>()V

    .line 31
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/a/e/aa;
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/google/a/e/p;

    invoke-direct {v0}, Lcom/google/a/e/p;-><init>()V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    const-string/jumbo v0, "Hashing.crc32c()"

    return-object v0
.end method

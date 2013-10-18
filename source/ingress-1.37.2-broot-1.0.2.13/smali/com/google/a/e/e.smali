.class final Lcom/google/a/e/e;
.super Ljava/io/ByteArrayOutputStream;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 160
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 161
    return-void
.end method


# virtual methods
.method final a()[B
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/google/a/e/e;->buf:[B

    return-object v0
.end method

.method final b()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lcom/google/a/e/e;->count:I

    return v0
.end method

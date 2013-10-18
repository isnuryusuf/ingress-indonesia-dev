.class final Lcom/google/a/f/c;
.super Ljava/io/OutputStream;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 538
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 553
    const-string/jumbo v0, "ByteStreams.nullOutputStream()"

    return-object v0
.end method

.method public final write(I)V
    .locals 0
    .parameter

    .prologue
    .line 541
    return-void
.end method

.method public final write([B)V
    .locals 0
    .parameter

    .prologue
    .line 544
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    return-void
.end method

.method public final write([BII)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 548
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    return-void
.end method

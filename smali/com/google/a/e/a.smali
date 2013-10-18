.class abstract Lcom/google/a/e/a;
.super Lcom/google/a/e/b;
.source "SourceFile"


# instance fields
.field private final a:Ljava/nio/ByteBuffer;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/google/a/e/b;-><init>()V

    .line 38
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/e/a;->a:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method protected abstract a(B)V
.end method

.method protected a([B)V
    .locals 2
    .parameter

    .prologue
    .line 49
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/a/e/a;->a([BII)V

    .line 50
    return-void
.end method

.method protected a([BII)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 56
    move v0, p2

    :goto_0
    add-int v1, p2, p3

    if-ge v0, v1, :cond_0

    .line 57
    aget-byte v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/google/a/e/a;->a(B)V

    .line 56
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 59
    :cond_0
    return-void
.end method

.method public final b([B)Lcom/google/a/e/aa;
    .locals 0
    .parameter

    .prologue
    .line 69
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    invoke-virtual {p0, p1}, Lcom/google/a/e/a;->a([B)V

    .line 71
    return-object p0
.end method

.method public final b([BII)Lcom/google/a/e/aa;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 76
    add-int v0, p2, p3

    array-length v1, p1

    invoke-static {p2, v0, v1}, Lcom/google/a/a/an;->a(III)V

    .line 77
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/a/e/a;->a([BII)V

    .line 78
    return-object p0
.end method

.method public final synthetic b(B)Lcom/google/a/e/at;
    .locals 0
    .parameter

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/google/a/e/a;->a(B)V

    return-object p0
.end method

.method public final synthetic c([B)Lcom/google/a/e/at;
    .locals 1
    .parameter

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/google/a/e/a;->b([B)Lcom/google/a/e/aa;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c([BII)Lcom/google/a/e/at;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/a/e/a;->b([BII)Lcom/google/a/e/aa;

    move-result-object v0

    return-object v0
.end method

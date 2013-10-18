.class final Lcom/google/a/e/ao;
.super Lcom/google/a/e/a;
.source "SourceFile"


# instance fields
.field private final a:Ljava/security/MessageDigest;

.field private final b:I

.field private c:Z


# direct methods
.method private constructor <init>(Ljava/security/MessageDigest;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/google/a/e/a;-><init>()V

    .line 124
    iput-object p1, p0, Lcom/google/a/e/ao;->a:Ljava/security/MessageDigest;

    .line 125
    iput p2, p0, Lcom/google/a/e/ao;->b:I

    .line 126
    return-void
.end method

.method synthetic constructor <init>(Ljava/security/MessageDigest;IB)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 117
    invoke-direct {p0, p1, p2}, Lcom/google/a/e/ao;-><init>(Ljava/security/MessageDigest;I)V

    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 147
    iget-boolean v0, p0, Lcom/google/a/e/ao;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "Cannot use Hasher after calling #hash() on it"

    invoke-static {v0, v1}, Lcom/google/a/a/an;->b(ZLjava/lang/Object;)V

    .line 148
    return-void

    .line 147
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()Lcom/google/a/e/u;
    .locals 2

    .prologue
    .line 152
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/a/e/ao;->c:Z

    .line 153
    iget v0, p0, Lcom/google/a/e/ao;->b:I

    iget-object v1, p0, Lcom/google/a/e/ao;->a:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->getDigestLength()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/a/e/ao;->a:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/a/e/v;->b([B)Lcom/google/a/e/u;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/a/e/ao;->a:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    iget v1, p0, Lcom/google/a/e/ao;->b:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/a/e/v;->b([B)Lcom/google/a/e/u;

    move-result-object v0

    goto :goto_0
.end method

.method protected final a(B)V
    .locals 1
    .parameter

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/google/a/e/ao;->b()V

    .line 131
    iget-object v0, p0, Lcom/google/a/e/ao;->a:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update(B)V

    .line 132
    return-void
.end method

.method protected final a([B)V
    .locals 1
    .parameter

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/google/a/e/ao;->b()V

    .line 137
    iget-object v0, p0, Lcom/google/a/e/ao;->a:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 138
    return-void
.end method

.method protected final a([BII)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/google/a/e/ao;->b()V

    .line 143
    iget-object v0, p0, Lcom/google/a/e/ao;->a:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    .line 144
    return-void
.end method

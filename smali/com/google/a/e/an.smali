.class final Lcom/google/a/e/an;
.super Lcom/google/a/e/f;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final a:Ljava/security/MessageDigest;

.field private final b:I

.field private final c:Z

.field private final d:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/google/a/e/f;-><init>()V

    .line 40
    invoke-static {p1}, Lcom/google/a/e/an;->a(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/e/an;->a:Ljava/security/MessageDigest;

    .line 41
    iget-object v0, p0, Lcom/google/a/e/an;->a:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->getDigestLength()I

    move-result v0

    iput v0, p0, Lcom/google/a/e/an;->b:I

    .line 42
    invoke-static {p2}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/a/e/an;->d:Ljava/lang/String;

    .line 43
    invoke-direct {p0}, Lcom/google/a/e/an;->b()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/a/e/an;->c:Z

    .line 44
    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/security/MessageDigest;
    .locals 2
    .parameter

    .prologue
    .line 75
    :try_start_0
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 76
    :catch_0
    move-exception v0

    .line 77
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method private b()Z
    .locals 1

    .prologue
    .line 58
    :try_start_0
    iget-object v0, p0, Lcom/google/a/e/an;->a:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    const/4 v0, 0x1

    .line 61
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()Lcom/google/a/e/aa;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 82
    iget-boolean v0, p0, Lcom/google/a/e/an;->c:Z

    if-eqz v0, :cond_0

    .line 84
    :try_start_0
    new-instance v1, Lcom/google/a/e/ao;

    iget-object v0, p0, Lcom/google/a/e/an;->a:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/MessageDigest;

    iget v2, p0, Lcom/google/a/e/an;->b:I

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lcom/google/a/e/ao;-><init>(Ljava/security/MessageDigest;IB)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 89
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    new-instance v0, Lcom/google/a/e/ao;

    iget-object v1, p0, Lcom/google/a/e/an;->a:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/a/e/an;->a(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    iget v2, p0, Lcom/google/a/e/an;->b:I

    invoke-direct {v0, v1, v2, v4}, Lcom/google/a/e/ao;-><init>(Ljava/security/MessageDigest;IB)V

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/a/e/an;->d:Ljava/lang/String;

    return-object v0
.end method

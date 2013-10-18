.class public abstract Lcom/google/f/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/f/i;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    return-void
.end method


# virtual methods
.method public final a()[B
    .locals 3

    .prologue
    .line 62
    :try_start_0
    invoke-virtual {p0}, Lcom/google/f/a;->b()I

    move-result v0

    new-array v0, v0, [B

    .line 63
    array-length v1, v0

    invoke-static {v0, v1}, Lcom/google/f/d;->a([BI)Lcom/google/f/d;

    move-result-object v1

    .line 64
    invoke-virtual {p0, v1}, Lcom/google/f/a;->a(Lcom/google/f/d;)V

    .line 65
    invoke-virtual {v1}, Lcom/google/f/d;->a()I

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Did not write as much data as expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Serializing to a byte array threw an IOException (should never happen)."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 66
    :cond_0
    return-object v0
.end method

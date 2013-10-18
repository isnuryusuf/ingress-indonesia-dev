.class public abstract Lcom/google/a/f/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 199
    const/16 v0, 0x1000

    new-array v0, v0, [B

    sput-object v0, Lcom/google/a/f/a;->a:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 554
    return-void
.end method

.method private a(Ljava/io/OutputStream;)J
    .locals 4
    .parameter

    .prologue
    .line 218
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    invoke-static {}, Lcom/google/a/f/f;->a()Lcom/google/a/f/f;

    move-result-object v1

    .line 222
    :try_start_0
    invoke-virtual {p0}, Lcom/google/a/f/a;->a()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/a/f/f;->a(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    .line 223
    invoke-static {v0, p1}, Lcom/google/a/f/b;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 227
    invoke-virtual {v1}, Lcom/google/a/f/f;->close()V

    return-wide v2

    .line 224
    :catch_0
    move-exception v0

    .line 225
    :try_start_1
    invoke-virtual {v1, v0}, Lcom/google/a/f/f;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 227
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/google/a/f/f;->close()V

    throw v0
.end method


# virtual methods
.method public final a(Lcom/google/a/e/z;)Lcom/google/a/e/u;
    .locals 2
    .parameter

    .prologue
    .line 320
    invoke-interface {p1}, Lcom/google/a/e/z;->a()Lcom/google/a/e/aa;

    move-result-object v0

    .line 321
    invoke-static {v0}, Lcom/google/a/e/s;->a(Lcom/google/a/e/at;)Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/a/f/a;->a(Ljava/io/OutputStream;)J

    .line 322
    invoke-interface {v0}, Lcom/google/a/e/aa;->a()Lcom/google/a/e/u;

    move-result-object v0

    return-object v0
.end method

.method public abstract a()Ljava/io/InputStream;
.end method

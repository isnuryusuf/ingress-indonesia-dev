.class public final Lcom/google/a/f/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/io/OutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 537
    new-instance v0, Lcom/google/a/f/c;

    invoke-direct {v0}, Lcom/google/a/f/c;-><init>()V

    sput-object v0, Lcom/google/a/f/b;->a:Ljava/io/OutputStream;

    return-void
.end method

.method public static a(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 162
    invoke-static {p0}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    const/16 v0, 0x1000

    new-array v2, v0, [B

    .line 165
    const-wide/16 v0, 0x0

    .line 167
    :goto_0
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 168
    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 169
    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 172
    int-to-long v3, v3

    add-long/2addr v0, v3

    .line 173
    goto :goto_0

    .line 174
    :cond_0
    return-wide v0
.end method

.method public static a(Ljava/io/InputStream;)[B
    .locals 1
    .parameter

    .prologue
    .line 211
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 212
    invoke-static {p0, v0}, Lcom/google/a/f/b;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 213
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.class public final Lcom/nianticproject/ingress/common/n/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private final a:[Ljava/io/InputStream;


# direct methods
.method private constructor <init>([Ljava/io/InputStream;)V
    .locals 0
    .parameter

    .prologue
    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    iput-object p1, p0, Lcom/nianticproject/ingress/common/n/f;->a:[Ljava/io/InputStream;

    .line 186
    return-void
.end method

.method synthetic constructor <init>([Ljava/io/InputStream;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 181
    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/common/n/f;-><init>([Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/nianticproject/ingress/common/n/f;->a:[Ljava/io/InputStream;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final close()V
    .locals 4

    .prologue
    .line 204
    iget-object v1, p0, Lcom/nianticproject/ingress/common/n/f;->a:[Ljava/io/InputStream;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 205
    invoke-static {v3}, Lcom/nianticproject/ingress/common/n/a;->a(Ljava/io/Closeable;)V

    .line 204
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 207
    :cond_0
    return-void
.end method

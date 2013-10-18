.class public final Lcom/nianticproject/ingress/common/n/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/n/a;

.field private final b:Lcom/nianticproject/ingress/common/n/e;

.field private c:Z


# direct methods
.method private constructor <init>(Lcom/nianticproject/ingress/common/n/a;Lcom/nianticproject/ingress/common/n/e;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 217
    iput-object p1, p0, Lcom/nianticproject/ingress/common/n/c;->a:Lcom/nianticproject/ingress/common/n/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    iput-object p2, p0, Lcom/nianticproject/ingress/common/n/c;->b:Lcom/nianticproject/ingress/common/n/e;

    .line 219
    return-void
.end method

.method synthetic constructor <init>(Lcom/nianticproject/ingress/common/n/a;Lcom/nianticproject/ingress/common/n/e;B)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 213
    invoke-direct {p0, p1, p2}, Lcom/nianticproject/ingress/common/n/c;-><init>(Lcom/nianticproject/ingress/common/n/a;Lcom/nianticproject/ingress/common/n/e;)V

    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/n/c;)Z
    .locals 1
    .parameter

    .prologue
    .line 213
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/n/c;->c:Z

    return v0
.end method

.method static synthetic b(Lcom/nianticproject/ingress/common/n/c;)Lcom/nianticproject/ingress/common/n/e;
    .locals 1
    .parameter

    .prologue
    .line 213
    iget-object v0, p0, Lcom/nianticproject/ingress/common/n/c;->b:Lcom/nianticproject/ingress/common/n/e;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/io/OutputStream;
    .locals 5

    .prologue
    .line 253
    iget-object v1, p0, Lcom/nianticproject/ingress/common/n/c;->a:Lcom/nianticproject/ingress/common/n/a;

    monitor-enter v1

    .line 254
    :try_start_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/n/c;->b:Lcom/nianticproject/ingress/common/n/e;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/n/e;->a(Lcom/nianticproject/ingress/common/n/e;)Lcom/nianticproject/ingress/common/n/c;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 255
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 257
    :cond_0
    :try_start_1
    new-instance v0, Lcom/nianticproject/ingress/common/n/d;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/n/c;->b:Lcom/nianticproject/ingress/common/n/e;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/nianticproject/ingress/common/n/e;->b(I)Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/4 v3, 0x0

    invoke-direct {v0, p0, v2, v3}, Lcom/nianticproject/ingress/common/n/d;-><init>(Lcom/nianticproject/ingress/common/n/c;Ljava/io/OutputStream;B)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 279
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/n/c;->c:Z

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/nianticproject/ingress/common/n/c;->a:Lcom/nianticproject/ingress/common/n/a;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/nianticproject/ingress/common/n/a;->a(Lcom/nianticproject/ingress/common/n/a;Lcom/nianticproject/ingress/common/n/c;Z)V

    .line 281
    iget-object v0, p0, Lcom/nianticproject/ingress/common/n/c;->a:Lcom/nianticproject/ingress/common/n/a;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/n/c;->b:Lcom/nianticproject/ingress/common/n/e;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/n/e;->c(Lcom/nianticproject/ingress/common/n/e;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/n/a;->a(Lcom/nianticproject/ingress/common/n/a;Ljava/lang/String;)Z

    .line 285
    :goto_0
    return-void

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/n/c;->a:Lcom/nianticproject/ingress/common/n/a;

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/nianticproject/ingress/common/n/a;->a(Lcom/nianticproject/ingress/common/n/a;Lcom/nianticproject/ingress/common/n/c;Z)V

    goto :goto_0
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 292
    iget-object v0, p0, Lcom/nianticproject/ingress/common/n/c;->a:Lcom/nianticproject/ingress/common/n/a;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/nianticproject/ingress/common/n/a;->a(Lcom/nianticproject/ingress/common/n/a;Lcom/nianticproject/ingress/common/n/c;Z)V

    .line 293
    return-void
.end method

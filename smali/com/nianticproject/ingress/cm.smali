.class final Lcom/nianticproject/ingress/cm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/nianticproject/ingress/common/n/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/nianticproject/ingress/NemesisApplication;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/NemesisApplication;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 429
    iput-object p1, p0, Lcom/nianticproject/ingress/cm;->b:Lcom/nianticproject/ingress/NemesisApplication;

    iput-object p2, p0, Lcom/nianticproject/ingress/cm;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()Lcom/nianticproject/ingress/common/n/a;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 433
    :try_start_0
    const-string/jumbo v0, "NemesisApplication.createDiskCacheTask.call"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 438
    :try_start_1
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/nianticproject/ingress/cm;->b:Lcom/nianticproject/ingress/NemesisApplication;

    invoke-virtual {v2}, Lcom/nianticproject/ingress/NemesisApplication;->getExternalCacheDir()Ljava/io/File;

    move-result-object v2

    iget-object v3, p0, Lcom/nianticproject/ingress/cm;->a:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 439
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 440
    invoke-static {v0}, Lcom/nianticproject/ingress/common/n/a;->a(Ljava/io/File;)Lcom/nianticproject/ingress/common/n/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 446
    :goto_0
    if-nez v0, :cond_0

    .line 448
    :try_start_2
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/nianticproject/ingress/cm;->b:Lcom/nianticproject/ingress/NemesisApplication;

    invoke-virtual {v2}, Lcom/nianticproject/ingress/NemesisApplication;->getCacheDir()Ljava/io/File;

    move-result-object v2

    iget-object v3, p0, Lcom/nianticproject/ingress/cm;->a:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 449
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 450
    invoke-static {v0}, Lcom/nianticproject/ingress/common/n/a;->a(Ljava/io/File;)Lcom/nianticproject/ingress/common/n/a;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    .line 460
    :cond_0
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    :goto_1
    return-object v0

    .line 442
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    .line 453
    :catch_1
    move-exception v0

    :try_start_3
    invoke-static {}, Lcom/nianticproject/ingress/NemesisApplication;->m()Lcom/nianticproject/ingress/common/w/aa;

    move-result-object v0

    const-string/jumbo v2, "Could not create disk tile store."

    invoke-virtual {v0, v2}, Lcom/nianticproject/ingress/common/w/aa;->c(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 454
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    move-object v0, v1

    goto :goto_1

    .line 460
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 429
    invoke-direct {p0}, Lcom/nianticproject/ingress/cm;->a()Lcom/nianticproject/ingress/common/n/a;

    move-result-object v0

    return-object v0
.end method

.class public final Lcom/nianticproject/ingress/o/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()V
    .locals 3

    .prologue
    .line 18
    sget-object v0, Lcom/nianticproject/ingress/o/a/a;->g:Lcom/nianticproject/ingress/o/a/a;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/o/a/a;->b()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 19
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->a()Ljava/io/OutputStream;

    move-result-object v0

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "/sys/kernel/debug/tracing/trace_marker"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 22
    :cond_0
    :goto_0
    return-void

    .line 21
    :cond_1
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->a()Ljava/io/OutputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_1
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->a()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/io/OutputStream;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

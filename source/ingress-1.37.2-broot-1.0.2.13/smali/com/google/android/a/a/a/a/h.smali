.class public final Lcom/google/android/a/a/a/a/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/a/a/a/a/f;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {p1}, Lcom/google/android/a/a/a/a/k;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/google/android/a/a/a/a/h;->a:Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/a/a/a/a/k;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iput-object v1, p0, Lcom/google/android/a/a/a/a/h;->b:Ljava/lang/String;

    .line 35
    return-void

    .line 34
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    invoke-static {p1, p2}, Lcom/google/android/a/a/a/a/k;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    .line 45
    invoke-static {}, Lcom/google/android/a/a/a/a/k;->a()Ljava/lang/String;

    move-result-object v0

    .line 46
    iget-object v1, p0, Lcom/google/android/a/a/a/a/h;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/a/a/a/a/k;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/android/a/a/a/a/h;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/a/a/a/a/k;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 47
    const-string/jumbo v1, "%s %s/%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v2, v4

    const/4 v0, 0x1

    iget-object v4, p0, Lcom/google/android/a/a/a/a/h;->a:Ljava/lang/String;

    aput-object v4, v2, v0

    const/4 v0, 0x2

    iget-object v4, p0, Lcom/google/android/a/a/a/a/h;->b:Ljava/lang/String;

    aput-object v4, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 49
    :goto_0
    const-string/jumbo v0, "SenderHttpURLConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "User Agent: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/a/a/a/a/k;->b(Ljava/lang/String;)V

    .line 51
    const/4 v2, 0x0

    .line 53
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 55
    :try_start_1
    const-string/jumbo v2, "User-Agent"

    invoke-virtual {v0, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string/jumbo v1, "SenderHttpURLConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "to send "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/a/a/a/a/k;->b(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 75
    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 79
    :cond_0
    return-void

    .line 68
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 69
    :goto_1
    :try_start_2
    const-string/jumbo v2, "SenderHttpURLConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "wrong url format: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/a/a/a/a/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    new-instance v2, Lcom/google/android/a/a/a/a/g;

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/android/a/a/a/a/g;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 75
    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_2
    if-eqz v2, :cond_1

    .line 76
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    throw v0

    .line 71
    :catch_1
    move-exception v0

    .line 72
    :goto_3
    :try_start_3
    const-string/jumbo v1, "SenderHttpURLConnection"

    const-string/jumbo v3, "IO error"

    invoke-static {v1, v3}, Lcom/google/android/a/a/a/a/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    new-instance v1, Lcom/google/android/a/a/a/a/g;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/a/a/a/a/g;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 75
    :catchall_1
    move-exception v0

    goto :goto_2

    :catchall_2
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_2

    .line 71
    :catch_2
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_3

    .line 68
    :catch_3
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_1

    :cond_2
    move-object v1, v0

    goto/16 :goto_0
.end method

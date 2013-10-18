.class public final Lcom/nianticproject/ingress/shared/aj;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/io/OutputStream;


# direct methods
.method public static a()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/nianticproject/ingress/shared/aj;->a:Ljava/io/OutputStream;

    return-object v0
.end method

.method public static a(Ljava/io/OutputStream;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    sput-object p0, Lcom/nianticproject/ingress/shared/aj;->a:Ljava/io/OutputStream;

    .line 51
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 57
    sget-object v0, Lcom/nianticproject/ingress/shared/aj;->a:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "B|0|"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->b(Ljava/lang/String;)V

    .line 61
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 70
    sget-object v0, Lcom/nianticproject/ingress/shared/aj;->a:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "B|0|"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->b(Ljava/lang/String;)V

    .line 74
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 94
    sget-object v0, Lcom/nianticproject/ingress/shared/aj;->a:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "B|0|"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->b(Ljava/lang/String;)V

    .line 98
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 83
    sget-object v0, Lcom/nianticproject/ingress/shared/aj;->a:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "B|0|"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->b(Ljava/lang/String;)V

    .line 87
    :cond_0
    return-void
.end method

.method public static b()V
    .locals 2

    .prologue
    .line 104
    sget-object v0, Lcom/nianticproject/ingress/shared/aj;->a:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 106
    :try_start_0
    sget-object v0, Lcom/nianticproject/ingress/shared/aj;->a:Ljava/io/OutputStream;

    const/16 v1, 0x45

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 124
    :try_start_0
    sget-object v0, Lcom/nianticproject/ingress/shared/aj;->a:Ljava/io/OutputStream;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

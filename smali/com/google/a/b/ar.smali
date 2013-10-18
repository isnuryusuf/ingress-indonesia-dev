.class final Lcom/google/a/b/ar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:I

.field final synthetic c:Lcom/google/a/b/ak;

.field final synthetic d:Lcom/google/a/i/a/p;

.field final synthetic e:Lcom/google/a/b/aq;


# direct methods
.method constructor <init>(Lcom/google/a/b/aq;Ljava/lang/Object;ILcom/google/a/b/ak;Lcom/google/a/i/a/p;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2392
    iput-object p1, p0, Lcom/google/a/b/ar;->e:Lcom/google/a/b/aq;

    iput-object p2, p0, Lcom/google/a/b/ar;->a:Ljava/lang/Object;

    iput p3, p0, Lcom/google/a/b/ar;->b:I

    iput-object p4, p0, Lcom/google/a/b/ar;->c:Lcom/google/a/b/ak;

    iput-object p5, p0, Lcom/google/a/b/ar;->d:Lcom/google/a/i/a/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 2396
    :try_start_0
    iget-object v0, p0, Lcom/google/a/b/ar;->e:Lcom/google/a/b/aq;

    iget-object v1, p0, Lcom/google/a/b/ar;->a:Ljava/lang/Object;

    iget v2, p0, Lcom/google/a/b/ar;->b:I

    iget-object v3, p0, Lcom/google/a/b/ar;->c:Lcom/google/a/b/ak;

    iget-object v4, p0, Lcom/google/a/b/ar;->d:Lcom/google/a/i/a/p;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/a/b/aq;->a(Ljava/lang/Object;ILcom/google/a/b/ak;Lcom/google/a/i/a/p;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2401
    :goto_0
    return-void

    .line 2397
    :catch_0
    move-exception v0

    .line 2398
    sget-object v1, Lcom/google/a/b/o;->a:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string/jumbo v3, "Exception thrown during refresh"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2399
    iget-object v1, p0, Lcom/google/a/b/ar;->c:Lcom/google/a/b/ak;

    invoke-virtual {v1, v0}, Lcom/google/a/b/ak;->a(Ljava/lang/Throwable;)Z

    goto :goto_0
.end method

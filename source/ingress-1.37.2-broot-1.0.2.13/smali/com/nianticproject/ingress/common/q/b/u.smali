.class final Lcom/nianticproject/ingress/common/q/b/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/q/b/r;

.field private final b:Lcom/nianticproject/ingress/common/q/b/c;

.field private final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nianticproject/ingress/common/q/b/e;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/q/b/r;Lcom/nianticproject/ingress/common/q/b/c;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nianticproject/ingress/common/q/b/c;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nianticproject/ingress/common/q/b/e;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 206
    iput-object p1, p0, Lcom/nianticproject/ingress/common/q/b/u;->a:Lcom/nianticproject/ingress/common/q/b/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    iput-object p2, p0, Lcom/nianticproject/ingress/common/q/b/u;->b:Lcom/nianticproject/ingress/common/q/b/c;

    .line 208
    iput-object p3, p0, Lcom/nianticproject/ingress/common/q/b/u;->c:Ljava/util/ArrayList;

    .line 209
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 214
    :try_start_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/q/b/u;->b:Lcom/nianticproject/ingress/common/q/b/c;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/q/b/u;->c:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/q/b/c;->a(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :goto_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/q/b/u;->a:Lcom/nianticproject/ingress/common/q/b/r;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/q/b/u;->b:Lcom/nianticproject/ingress/common/q/b/c;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/q/b/u;->c:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/q/b/u;->d:Ljava/lang/Throwable;

    invoke-static {v0, v1, v2, v3}, Lcom/nianticproject/ingress/common/q/b/r;->a(Lcom/nianticproject/ingress/common/q/b/r;Lcom/nianticproject/ingress/common/q/b/c;Ljava/util/ArrayList;Ljava/lang/Throwable;)V

    .line 220
    return-void

    .line 215
    :catch_0
    move-exception v0

    .line 216
    iput-object v0, p0, Lcom/nianticproject/ingress/common/q/b/u;->d:Ljava/lang/Throwable;

    goto :goto_0
.end method

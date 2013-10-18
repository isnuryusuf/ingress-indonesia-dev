.class final Lcom/nianticproject/ingress/common/model/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/a/a/ba;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/a/a/ba",
        "<",
        "Lcom/nianticproject/ingress/common/model/l;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/nianticproject/ingress/common/model/o;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/model/o;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 740
    iput-object p1, p0, Lcom/nianticproject/ingress/common/model/x;->b:Lcom/nianticproject/ingress/common/model/o;

    iput-boolean p2, p0, Lcom/nianticproject/ingress/common/model/x;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3
    .parameter

    .prologue
    .line 740
    check-cast p1, Lcom/nianticproject/ingress/common/model/l;

    :try_start_0
    const-string/jumbo v0, "PlayerModel."

    invoke-interface {p1}, Lcom/nianticproject/ingress/common/model/l;->a()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ".onAccessLevelChanged"

    invoke-static {v0, v1, v2}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nianticproject/ingress/common/model/x;->b:Lcom/nianticproject/ingress/common/model/o;

    iget v0, v0, Lcom/nianticproject/ingress/common/model/o;->a:I

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/t;->c(I)I

    move-result v0

    iget-boolean v1, p0, Lcom/nianticproject/ingress/common/model/x;->a:Z

    invoke-interface {p1, v0, v1}, Lcom/nianticproject/ingress/common/model/l;->a(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method

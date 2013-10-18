.class final Lcom/nianticproject/ingress/common/v/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/playerprofile/bb;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/shared/rpc/ProfileSettings;

.field final synthetic b:Lcom/nianticproject/ingress/common/v/e;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/v/e;Lcom/nianticproject/ingress/shared/rpc/ProfileSettings;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 290
    iput-object p1, p0, Lcom/nianticproject/ingress/common/v/h;->b:Lcom/nianticproject/ingress/common/v/e;

    iput-object p2, p0, Lcom/nianticproject/ingress/common/v/h;->a:Lcom/nianticproject/ingress/shared/rpc/ProfileSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/nianticproject/ingress/common/x/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nianticproject/ingress/common/x/f;"
        }
    .end annotation

    .prologue
    .line 299
    iget-object v0, p0, Lcom/nianticproject/ingress/common/v/h;->b:Lcom/nianticproject/ingress/common/v/e;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/v/e;->a:Lcom/nianticproject/ingress/common/model/k;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/v/h;->a:Lcom/nianticproject/ingress/shared/rpc/ProfileSettings;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/model/k;->a(Lcom/nianticproject/ingress/shared/rpc/ProfileSettings;)V

    .line 300
    iget-object v0, p0, Lcom/nianticproject/ingress/common/v/h;->b:Lcom/nianticproject/ingress/common/v/e;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/v/e;->d:Lcom/nianticproject/ingress/common/v/ai;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/v/h;->a:Lcom/nianticproject/ingress/shared/rpc/ProfileSettings;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/shared/rpc/ProfileSettings;->a()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/v/ai;->m(Z)V

    .line 301
    const/4 v0, 0x0

    return-object v0
.end method

.class final Lcom/nianticproject/ingress/bs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/x/f;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/nianticproject/ingress/common/ui/t;

.field final synthetic c:Lcom/nianticproject/ingress/common/ui/m;

.field final synthetic d:Lcom/nianticproject/ingress/NemesisActivity;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/NemesisActivity;ZLcom/nianticproject/ingress/common/ui/t;Lcom/nianticproject/ingress/common/ui/m;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1515
    iput-object p1, p0, Lcom/nianticproject/ingress/bs;->d:Lcom/nianticproject/ingress/NemesisActivity;

    iput-boolean p2, p0, Lcom/nianticproject/ingress/bs;->a:Z

    iput-object p3, p0, Lcom/nianticproject/ingress/bs;->b:Lcom/nianticproject/ingress/common/ui/t;

    iput-object p4, p0, Lcom/nianticproject/ingress/bs;->c:Lcom/nianticproject/ingress/common/ui/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nianticproject/ingress/common/x/p;)Lcom/nianticproject/ingress/common/x/f;
    .locals 2
    .parameter

    .prologue
    .line 1519
    iget-boolean v0, p0, Lcom/nianticproject/ingress/bs;->a:Z

    if-eqz v0, :cond_0

    .line 1524
    iget-object v0, p0, Lcom/nianticproject/ingress/bs;->b:Lcom/nianticproject/ingress/common/ui/t;

    iget-object v1, p0, Lcom/nianticproject/ingress/bs;->c:Lcom/nianticproject/ingress/common/ui/m;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/t;->a(Lcom/nianticproject/ingress/common/ui/m;)Lcom/nianticproject/ingress/common/ui/m;

    .line 1532
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 1530
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/bs;->b:Lcom/nianticproject/ingress/common/ui/t;

    iget-object v1, p0, Lcom/nianticproject/ingress/bs;->c:Lcom/nianticproject/ingress/common/ui/m;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/t;->b(Lcom/nianticproject/ingress/common/ui/m;)Lcom/nianticproject/ingress/common/ui/m;

    goto :goto_0
.end method

.method public final n_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1537
    const-string/jumbo v0, "Set/Replace RemotePortalActivity"

    return-object v0
.end method

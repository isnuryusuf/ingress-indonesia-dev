.class final Lcom/nianticproject/ingress/common/ui/f/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/x/f;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/ui/f/a;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/ui/f/a;)V
    .locals 0
    .parameter

    .prologue
    .line 174
    iput-object p1, p0, Lcom/nianticproject/ingress/common/ui/f/b;->a:Lcom/nianticproject/ingress/common/ui/f/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nianticproject/ingress/common/x/p;)Lcom/nianticproject/ingress/common/x/f;
    .locals 1
    .parameter

    .prologue
    .line 178
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/f/b;->a:Lcom/nianticproject/ingress/common/ui/f/a;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/f/a;->a(Lcom/nianticproject/ingress/common/ui/f/a;)Lcom/nianticproject/ingress/common/ui/f/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/ui/f/d;->a()V

    .line 179
    const/4 v0, 0x0

    return-object v0
.end method

.method public final n_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    const-string/jumbo v0, "SetNearbyPortalsFireModelChanged"

    return-object v0
.end method

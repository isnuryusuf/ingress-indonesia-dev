.class final Lcom/nianticproject/ingress/multiphotos/ac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/multiphotos/MoreInfoActivity;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/multiphotos/MoreInfoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 250
    iput-object p1, p0, Lcom/nianticproject/ingress/multiphotos/ac;->a:Lcom/nianticproject/ingress/multiphotos/MoreInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 253
    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/ac;->a:Lcom/nianticproject/ingress/multiphotos/MoreInfoActivity;

    invoke-static {v0}, Lcom/nianticproject/ingress/multiphotos/MoreInfoActivity;->h(Lcom/nianticproject/ingress/multiphotos/MoreInfoActivity;)Lcom/nianticproject/ingress/multiphotos/av;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/multiphotos/av;->d()V

    .line 254
    return-void
.end method

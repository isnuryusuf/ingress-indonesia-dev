.class final Lcom/nianticproject/ingress/bd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/InviteActivity;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/InviteActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 212
    iput-object p1, p0, Lcom/nianticproject/ingress/bd;->a:Lcom/nianticproject/ingress/InviteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 215
    iget-object v0, p0, Lcom/nianticproject/ingress/bd;->a:Lcom/nianticproject/ingress/InviteActivity;

    invoke-static {v0}, Lcom/nianticproject/ingress/InviteActivity;->i(Lcom/nianticproject/ingress/InviteActivity;)V

    .line 216
    return-void
.end method

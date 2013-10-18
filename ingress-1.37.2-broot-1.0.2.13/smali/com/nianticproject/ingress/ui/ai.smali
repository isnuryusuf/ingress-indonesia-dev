.class final Lcom/nianticproject/ingress/ui/ai;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/ui/TouchCollapsibleLayout;


# direct methods
.method private constructor <init>(Lcom/nianticproject/ingress/ui/TouchCollapsibleLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 15
    iput-object p1, p0, Lcom/nianticproject/ingress/ui/ai;->a:Lcom/nianticproject/ingress/ui/TouchCollapsibleLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nianticproject/ingress/ui/TouchCollapsibleLayout;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/ui/ai;-><init>(Lcom/nianticproject/ingress/ui/TouchCollapsibleLayout;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 18
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/ai;->a:Lcom/nianticproject/ingress/ui/TouchCollapsibleLayout;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/nianticproject/ingress/ui/TouchCollapsibleLayout;->a(ZZ)V

    .line 19
    return-void
.end method

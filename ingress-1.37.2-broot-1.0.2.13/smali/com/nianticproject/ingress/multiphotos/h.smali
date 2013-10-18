.class final Lcom/nianticproject/ingress/multiphotos/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/i/c;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/multiphotos/LightboxActivity;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/multiphotos/LightboxActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/nianticproject/ingress/multiphotos/h;->a:Lcom/nianticproject/ingress/multiphotos/LightboxActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nianticproject/ingress/i/b;)V
    .locals 3
    .parameter

    .prologue
    .line 113
    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/h;->a:Lcom/nianticproject/ingress/multiphotos/LightboxActivity;

    iget-object v0, v0, Lcom/nianticproject/ingress/multiphotos/LightboxActivity;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/nianticproject/ingress/i/b;->a(Ljava/lang/String;)Lcom/nianticproject/ingress/i/a;

    move-result-object v0

    .line 114
    if-nez v0, :cond_0

    .line 119
    :goto_0
    return-void

    .line 118
    :cond_0
    iget-object v1, p0, Lcom/nianticproject/ingress/multiphotos/h;->a:Lcom/nianticproject/ingress/multiphotos/LightboxActivity;

    invoke-static {v0}, Lcom/nianticproject/ingress/i/b;->a(Lcom/nianticproject/ingress/i/a;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0}, Lcom/nianticproject/ingress/i/a;->d()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/nianticproject/ingress/multiphotos/LightboxActivity;->a(Ljava/util/Collection;Ljava/util/Map;)V

    goto :goto_0
.end method

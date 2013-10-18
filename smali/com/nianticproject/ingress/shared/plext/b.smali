.class public final Lcom/nianticproject/ingress/shared/plext/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/a/c/dh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/c/dh",
            "<",
            "Lcom/nianticproject/ingress/shared/plext/d;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/nianticproject/ingress/shared/plext/a;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final b:Lcom/nianticproject/ingress/shared/plext/c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 18
    invoke-static {}, Lcom/google/a/c/dh;->j()Lcom/google/a/c/di;

    move-result-object v0

    sget-object v1, Lcom/nianticproject/ingress/shared/plext/d;->a:Lcom/nianticproject/ingress/shared/plext/d;

    const-class v2, Lcom/nianticproject/ingress/shared/plext/TextMarkupArgSet;

    invoke-virtual {v0, v1, v2}, Lcom/google/a/c/di;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/di;

    move-result-object v0

    sget-object v1, Lcom/nianticproject/ingress/shared/plext/d;->f:Lcom/nianticproject/ingress/shared/plext/d;

    const-class v2, Lcom/nianticproject/ingress/shared/plext/FactionMarkupArgSet;

    invoke-virtual {v0, v1, v2}, Lcom/google/a/c/di;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/di;

    move-result-object v0

    sget-object v1, Lcom/nianticproject/ingress/shared/plext/d;->c:Lcom/nianticproject/ingress/shared/plext/d;

    const-class v2, Lcom/nianticproject/ingress/shared/plext/PlayerMarkupArgSet;

    invoke-virtual {v0, v1, v2}, Lcom/google/a/c/di;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/di;

    move-result-object v0

    sget-object v1, Lcom/nianticproject/ingress/shared/plext/d;->d:Lcom/nianticproject/ingress/shared/plext/d;

    const-class v2, Lcom/nianticproject/ingress/shared/plext/PlayerMarkupArgSet;

    invoke-virtual {v0, v1, v2}, Lcom/google/a/c/di;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/di;

    move-result-object v0

    sget-object v1, Lcom/nianticproject/ingress/shared/plext/d;->e:Lcom/nianticproject/ingress/shared/plext/d;

    const-class v2, Lcom/nianticproject/ingress/shared/plext/PortalMarkupArgSet;

    invoke-virtual {v0, v1, v2}, Lcom/google/a/c/di;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/di;

    move-result-object v0

    sget-object v1, Lcom/nianticproject/ingress/shared/plext/d;->b:Lcom/nianticproject/ingress/shared/plext/d;

    const-class v2, Lcom/nianticproject/ingress/shared/plext/PlayerMarkupArgSet;

    invoke-virtual {v0, v1, v2}, Lcom/google/a/c/di;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/di;

    move-result-object v0

    sget-object v1, Lcom/nianticproject/ingress/shared/plext/d;->g:Lcom/nianticproject/ingress/shared/plext/d;

    const-class v2, Lcom/nianticproject/ingress/shared/plext/SecureMarkupArgSet;

    invoke-virtual {v0, v1, v2}, Lcom/google/a/c/di;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/di;

    move-result-object v0

    sget-object v1, Lcom/nianticproject/ingress/shared/plext/d;->h:Lcom/nianticproject/ingress/shared/plext/d;

    const-class v2, Lcom/nianticproject/ingress/shared/plext/ScoreMarkupArgSet;

    invoke-virtual {v0, v1, v2}, Lcom/google/a/c/di;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/di;

    move-result-object v0

    sget-object v1, Lcom/nianticproject/ingress/shared/plext/d;->i:Lcom/nianticproject/ingress/shared/plext/d;

    const-class v2, Lcom/nianticproject/ingress/shared/plext/AttributionLinkMarkupArgSet;

    invoke-virtual {v0, v1, v2}, Lcom/google/a/c/di;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/di;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/c/di;->a()Lcom/google/a/c/dh;

    move-result-object v0

    sput-object v0, Lcom/nianticproject/ingress/shared/plext/b;->a:Lcom/google/a/c/dh;

    .line 35
    const-string/jumbo v0, "[?]"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/plext/TextMarkupArgSet;->a(Ljava/lang/String;)Lcom/nianticproject/ingress/shared/plext/c;

    move-result-object v0

    sput-object v0, Lcom/nianticproject/ingress/shared/plext/b;->b:Lcom/nianticproject/ingress/shared/plext/c;

    return-void
.end method

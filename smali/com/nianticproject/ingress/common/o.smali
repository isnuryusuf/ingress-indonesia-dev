.class public final Lcom/nianticproject/ingress/common/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/nianticproject/ingress/gameentity/f;

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lcom/nianticproject/ingress/common/p;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/nianticproject/ingress/gameentity/f;Ljava/util/Map;Lcom/nianticproject/ingress/common/p;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/nianticproject/ingress/gameentity/f;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/nianticproject/ingress/common/p;",
            ")V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/o;->a:Ljava/lang/String;

    .line 35
    invoke-static {p2}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/f;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/o;->b:Lcom/nianticproject/ingress/gameentity/f;

    .line 36
    iput-object p3, p0, Lcom/nianticproject/ingress/common/o;->c:Ljava/util/Map;

    .line 37
    iput-object p4, p0, Lcom/nianticproject/ingress/common/o;->d:Lcom/nianticproject/ingress/common/p;

    .line 38
    return-void
.end method

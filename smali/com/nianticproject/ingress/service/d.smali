.class public final Lcom/nianticproject/ingress/service/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/nianticproject/ingress/shared/PregameStatus;

.field public final b:Ljava/lang/String;

.field public final c:Lcom/nianticproject/ingress/gameentity/f;

.field public final d:Ljava/util/Map;
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


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/shared/PregameStatus;Ljava/lang/String;Lcom/nianticproject/ingress/gameentity/f;Ljava/util/Map;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nianticproject/ingress/shared/PregameStatus;",
            "Ljava/lang/String;",
            "Lcom/nianticproject/ingress/gameentity/f;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/nianticproject/ingress/service/d;->a:Lcom/nianticproject/ingress/shared/PregameStatus;

    .line 46
    iput-object p2, p0, Lcom/nianticproject/ingress/service/d;->b:Ljava/lang/String;

    .line 47
    iput-object p3, p0, Lcom/nianticproject/ingress/service/d;->c:Lcom/nianticproject/ingress/gameentity/f;

    .line 48
    iput-object p4, p0, Lcom/nianticproject/ingress/service/d;->d:Ljava/util/Map;

    .line 49
    return-void
.end method

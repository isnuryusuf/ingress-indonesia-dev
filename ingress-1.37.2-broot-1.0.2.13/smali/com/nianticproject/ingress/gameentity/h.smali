.class final Lcom/nianticproject/ingress/gameentity/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/a/a/aa;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/a/a/aa",
        "<",
        "Ljava/lang/Class",
        "<+",
        "Lcom/nianticproject/ingress/gameentity/a;",
        ">;",
        "Lcom/nianticproject/ingress/gameentity/JsonConstants$SerializationTag;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 137
    check-cast p1, Ljava/lang/Class;

    invoke-static {}, Lcom/nianticproject/ingress/gameentity/JsonConstants$SerializationTag;->access$000()Lcom/google/a/c/dh;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/a/c/dh;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/JsonConstants$SerializationTag;

    return-object v0
.end method

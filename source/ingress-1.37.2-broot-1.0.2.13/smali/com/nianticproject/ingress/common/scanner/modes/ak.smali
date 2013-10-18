.class final Lcom/nianticproject/ingress/common/scanner/modes/ak;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/ui/g/f;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/scanner/modes/ah;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/scanner/modes/ah;)V
    .locals 0
    .parameter

    .prologue
    .line 1047
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/modes/ak;->a:Lcom/nianticproject/ingress/common/scanner/modes/ah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Collection;Ljava/util/Map;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/nianticproject/ingress/common/inventory/ui/q;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/nianticproject/ingress/common/inventory/ui/q;",
            "Lcom/nianticproject/ingress/shared/n;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1051
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1055
    :cond_0
    invoke-static {}, Lcom/nianticproject/ingress/common/scanner/modes/ah;->c()Lcom/nianticproject/ingress/common/w/aa;

    move-result-object v0

    const-string/jumbo v1, "onPageComplete: ERROR usableKeys=%s failedKeysMap=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/nianticproject/ingress/common/w/aa;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1100
    :goto_0
    return-void

    .line 1066
    :cond_1
    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/inventory/ui/q;

    .line 1067
    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/modes/ak;->a:Lcom/nianticproject/ingress/common/scanner/modes/ah;

    invoke-static {v2}, Lcom/nianticproject/ingress/common/scanner/modes/ah;->m(Lcom/nianticproject/ingress/common/scanner/modes/ah;)Lcom/nianticproject/ingress/common/ui/g/s;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/nianticproject/ingress/common/ui/g/s;->a(Lcom/nianticproject/ingress/common/inventory/ui/q;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1097
    :catch_0
    move-exception v0

    .line 1098
    invoke-static {}, Lcom/nianticproject/ingress/common/scanner/modes/ah;->c()Lcom/nianticproject/ingress/common/w/aa;

    move-result-object v1

    const-string/jumbo v2, "onPageCompleteListener caught unexpected exception"

    invoke-virtual {v1, v0, v2}, Lcom/nianticproject/ingress/common/w/aa;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 1099
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1069
    :cond_2
    :try_start_1
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 1070
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ak;->a:Lcom/nianticproject/ingress/common/scanner/modes/ah;

    invoke-static {v0, p1}, Lcom/nianticproject/ingress/common/scanner/modes/ah;->a(Lcom/nianticproject/ingress/common/scanner/modes/ah;Ljava/util/Collection;)V

    .line 1073
    :cond_3
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1074
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nianticproject/ingress/shared/n;

    sget-object v3, Lcom/nianticproject/ingress/shared/n;->B:Lcom/nianticproject/ingress/shared/n;

    invoke-virtual {v1, v3}, Lcom/nianticproject/ingress/shared/n;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1076
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/ak;->a:Lcom/nianticproject/ingress/common/scanner/modes/ah;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/scanner/modes/ah;->m(Lcom/nianticproject/ingress/common/scanner/modes/ah;)Lcom/nianticproject/ingress/common/ui/g/s;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/inventory/ui/q;

    invoke-virtual {v1, v0}, Lcom/nianticproject/ingress/common/ui/g/s;->b(Lcom/nianticproject/ingress/common/inventory/ui/q;)V

    goto :goto_2

    .line 1078
    :cond_4
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/ak;->a:Lcom/nianticproject/ingress/common/scanner/modes/ah;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/scanner/modes/ah;->m(Lcom/nianticproject/ingress/common/scanner/modes/ah;)Lcom/nianticproject/ingress/common/ui/g/s;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nianticproject/ingress/common/inventory/ui/q;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/shared/n;

    invoke-virtual {v3, v1, v0}, Lcom/nianticproject/ingress/common/ui/g/s;->a(Lcom/nianticproject/ingress/common/inventory/ui/q;Lcom/nianticproject/ingress/shared/n;)V

    goto :goto_2

    .line 1082
    :cond_5
    invoke-static {}, Lcom/nianticproject/ingress/common/x/i;->a()Lcom/nianticproject/ingress/common/x/i;

    move-result-object v0

    new-instance v1, Lcom/nianticproject/ingress/common/scanner/modes/al;

    invoke-direct {v1, p0}, Lcom/nianticproject/ingress/common/scanner/modes/al;-><init>(Lcom/nianticproject/ingress/common/scanner/modes/ak;)V

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/x/i;->a(Lcom/nianticproject/ingress/common/x/f;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

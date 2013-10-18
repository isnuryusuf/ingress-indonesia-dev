.class Lcom/badlogic/gdx/scenes/scene2d/ui/Skin$2;
.super Lcom/badlogic/gdx/utils/Json$ReadOnlySerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/utils/Json$ReadOnlySerializer",
        "<",
        "Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

.field final synthetic val$skin:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 445
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin$2;->val$skin:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    invoke-direct {p0}, Lcom/badlogic/gdx/utils/Json$ReadOnlySerializer;-><init>()V

    return-void
.end method

.method private readNamedObjects(Lcom/badlogic/gdx/utils/Json;Ljava/lang/Class;Lcom/badlogic/gdx/utils/ObjectMap;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Json;",
            "Ljava/lang/Class;",
            "Lcom/badlogic/gdx/utils/ObjectMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/utils/ObjectMap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 462
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin$TintedDrawable;

    if-ne p2, v0, :cond_1

    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-object v2, v0

    .line 463
    :goto_0
    invoke-virtual {p3}, Lcom/badlogic/gdx/utils/ObjectMap;->entries()Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap$Entries;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/ObjectMap$Entry;

    .line 464
    iget-object v1, v0, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->key:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 465
    iget-object v4, v0, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->value:Ljava/lang/Object;

    invoke-virtual {p1, p2, v4}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 466
    if-eqz v4, :cond_0

    .line 468
    :try_start_0
    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    invoke-virtual {v5, v1, v4, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->add(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 469
    :catch_0
    move-exception v1

    .line 470
    new-instance v2, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Error reading "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->key:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_1
    move-object v2, p2

    .line 462
    goto :goto_0

    .line 472
    :cond_2
    return-void
.end method


# virtual methods
.method public read(Lcom/badlogic/gdx/utils/Json;Ljava/lang/Object;Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 448
    check-cast p2, Lcom/badlogic/gdx/utils/ObjectMap;

    .line 449
    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/ObjectMap;->entries()Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap$Entries;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/ObjectMap$Entry;

    .line 450
    iget-object v1, v0, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->key:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 451
    iget-object v0, v0, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->value:Ljava/lang/Object;

    check-cast v0, Lcom/badlogic/gdx/utils/ObjectMap;

    .line 453
    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, p1, v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin$2;->readNamedObjects(Lcom/badlogic/gdx/utils/Json;Ljava/lang/Class;Lcom/badlogic/gdx/utils/ObjectMap;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 454
    :catch_0
    move-exception v0

    .line 455
    new-instance v1, Lcom/badlogic/gdx/utils/SerializationException;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 457
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin$2;->val$skin:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    return-object v0
.end method

.method public bridge synthetic read(Lcom/badlogic/gdx/utils/Json;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 445
    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin$2;->read(Lcom/badlogic/gdx/utils/Json;Ljava/lang/Object;Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    move-result-object v0

    return-object v0
.end method
